<?php

/*
文件名：Users.php
描述：与操作相关的controller
作者：星辰后端 18级 廖武耀
修改日志：2020.2.22 添加微信相关方法，并于getuserinfo方法后增加返回分数--星辰后端 19级 潘永雷
*/

namespace app\controller;
//header('Access-Control-Allow-Credentials: true');
//header('Access-Control-Allow-Methods:POST,GET,OPTIONS');
//header('Access-Control-Allow-Headers:DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type');
header('Access-Control-Allow-Origin: *');
//header('Access-Control-Max-Age: 1728000');
use think\Controller;
use think\Loader;
use think\facade\Request;
use Imagine;
use Imagine\Image\Box;
use Imagine\Image\Point;
use Imagine\Image\Palette\RGB;
use Imagine\Image\ImageInterface;
use app\model\Config;
use app\model\Problems;
use app\model\Record;
use app\model\User;
use app\model\Image;
use think\facade\Log;
use lib\Ldap;
use think\facade\Cookie;

class Users extends Controller
{
	function initialize()
    {
        session_start();
		$this->ConfigModel = new Config();
		$this->ProblemsModel = new Problems();
		$this->RecordModel = new Record();
		$this->UserModel = new User();
		$this->ImageModel = new Image();
    }
	//提交答题情况
	function submit()
	{
		$getuserinfo_return;
		if(empty(Request::post('openid')))
		{
			$getuserinfo_return['try']=-1;
			return json($getuserinfo_return);
		}
		//查找用户信息并更新考试次数
		$getuserinfo_mysql=$this->UserModel->where('wxid',Request::post('openid'))->select();
		if(empty($getuserinfo_mysql[0]))
		{
			$getuserinfo_return['try']=1;
			$newuser=new User;
			$newuser->wxid=Request::post('openid');
			$newuser->try=1;
			$newuser->save();
		}
		else
		{
			$getuserinfo_return['try'] = $getuserinfo_mysql[0]['try'] + 1;
			if($getuserinfo_return['try'] > 2)
			{
				return json($getuserinfo_return);
			}
			$newuser = User::where('wxid',Request::post('openid'))->find();
			$newuser->try = $newuser->try + 1;
			$newuser->save();
		}
		$scoresum=0;
		$correct_array = Request::post('correct');
		//根据examid查找
		$oldrecord = Record::where('wxid',Request::post('openid'))->where('score',-1)->where('id',Request::post('examid'))->find();
		if(empty($oldrecord))
		{
			$getuserinfo_return['try']=-1;
			return json($getuserinfo_return);
		} 
		$problem_array=explode(",",$oldrecord->problemid); 
		//统计分数并更新展示次数与正确次数
		for($i=0;$i<count($correct_array);++$i)
		{
			$aproblem = Problems::where('id',$problem_array[$i])->find();
			$aproblem->show_time = $aproblem->show_time + 1;
			//for($j=0;$j<count($correct_array);++$j)
			//{
				if($aproblem->answer==$correct_array[$i])
				{
					$aproblem->pass_time = $aproblem->pass_time + 1;
					$scoresum += 10;
				}
			//}
			$aproblem->save();
		}
		$oldrecord->score=$scoresum;
		$oldrecord->save();
		$getuserinfo_return['score']=$scoresum;
		return json($getuserinfo_return);
	}
	//获取问题
	function getproblem()
	{
		$newrecord_problemid="";
		$getproblem_data=$this->ProblemsModel->where('type',"第一类")->limit(2)->orderRaw('rand()')->select();
		for($i=0;$i<2;$i++)
		{
			$return_data[$i]=$getproblem_data[$i];
			$newrecord_problemid = $newrecord_problemid . $getproblem_data[$i]['id'] . ",";
		}
		$getproblem_data=$this->ProblemsModel->where('type',"第二类")->limit(3)->orderRaw('rand()')->select();
		for($i=0;$i<3;$i++)
		{
			$return_data[$i+2]=$getproblem_data[$i];
			$newrecord_problemid = $newrecord_problemid . $getproblem_data[$i]['id'] . ",";
		}
		$getproblem_data=$this->ProblemsModel->where('type',"第三类")->limit(3)->orderRaw('rand()')->select();
		for($i=0;$i<3;$i++)
		{
			$return_data[$i+5]=$getproblem_data[$i];
			$newrecord_problemid = $newrecord_problemid . $getproblem_data[$i]['id'] . ",";
		}
		$getproblem_data=$this->ProblemsModel->where('type',"第四类")->limit(3)->orderRaw('rand()')->select();
		for($i=0;$i<2;$i++)
		{
			$return_data[$i+8]=$getproblem_data[$i];
			$newrecord_problemid = $newrecord_problemid . $getproblem_data[$i]['id'] . ",";
		}
		$newrecord = new Record;
		$newrecord->wxid=Request::post('openid');
		$newrecord->problemid=$newrecord_problemid;
		$newrecord->score=-1;
		$newrecord->save();
		$return_datas['examid'] = $newrecord->id;
		$return_datas['data'] = $return_data;
		return json($return_datas);
	}
	//获取用户信息
	function getuserinfo()
	{
		if(empty(Request::post('openid')))
		{
			$getuserinfo_return['try']=-1;
			return json($getuserinfo_return);
		}
		$getuserinfo_mysql=$this->UserModel->where('wxid',Request::post('openid'))->select();
		$final_score= Record::where('wxid',Request::post('openid'))->order('score','desc')->limit(1)->find();
		if(empty($getuserinfo_mysql[0]))
		{
			$getuserinfo_return['try']=0;
			$newuser = new User;
			$newuser->wxid=Request::post('openid');
			$newuser->try=0;
			$newuser->save();
		}
		else
		{
			$getuserinfo_return['try'] = $getuserinfo_mysql[0]['try'];
		}
		if(empty($final_score))
		{
			$getuserinfo_return['score']='-700';
		}
		else
		{
			$getuserinfo_return['score']=$final_score['score'];
		}
		return json($getuserinfo_return);
	}


	//以下为新增方法
	public function checksignature(Request $request)//微信接口认证方法
	{
		Log::write($request::param());
	    $signature = $_GET["signature"];
	    $timestamp = $_GET["timestamp"];
	    $nonce = $_GET["nonce"];
	    $echostr = $_GET["echostr"];
		
	    $token = 'uestc';
	    $tmpArr = array($token, $timestamp, $nonce);
	    sort($tmpArr, SORT_STRING);
	    $tmpStr = implode( $tmpArr );
	    $tmpStr = sha1( $tmpStr );
	    if( $tmpStr == $signature ){
	        return $echostr;
	    }else{
	        return '验证失败';
	    }
	}
	public function getopenid()
	{

		$code   = $_GET['code'];
		$appid  = 'wxc6e2459bdea9cd72';
		$secret = '2d46bb85fee34fba3401796b5a224283';
		$weixin1 =  file_get_contents('https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$secret.'&code='.$code.'&grant_type=authorization_code');//通过code换取网页授权access_token
		$jsondecode = json_decode($weixin1); //对JSON格式的字符串进行编码
		$array = get_object_vars($jsondecode);//转换成数组
		$openid = $array['openid'];//输出openid
		$access_token = $array['access_token'];
		$weixin2 =  file_get_contents('https://api.weixin.qq.com/sns/userinfo?access_token='.$access_token.'&openid='.$openid.'&lang=zh_CN');//通过access_token和openid换取用户信息
		Cookie::set('nickname',get_object_vars(json_decode($weixin2))['nickname']);
		Cookie::set('openid',get_object_vars(json_decode($weixin2))['openid']);
		Cookie::set('iconurl',get_object_vars(json_decode($weixin2))['headimgurl']);
		return $this->redirect('/biye/');
	}
	//返回回调地址
	public function index()
	{
		$appid  = 'wxc6e2459bdea9cd72';
		$redirect_uri = urlencode('http://121.199.71.134/public/users/getopenid');
		$url    = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid='.$appid.'&redirect_uri='.$redirect_uri.'&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect';
		return $this->redirect($url);
	}

	function getrank()
	{
		$ranks = $this->ImageModel->field('url,nickname,wxid,score')->group('wxid')->limit(50)->orderRaw('score desc')->select();
		//$ranks = $this->RecordModel->field('wxid,score,max(score)')->group('wxid')->limit(50)->orderRaw('score desc')->select();
		for ($i=0; $i < count($ranks); $i++) 
		{ 
			$return_rank[$i]['wxid']=$ranks[$i]->wxid;
			$return_rank[$i]['score']=$ranks[$i]->score;
			$return_rank[$i]['url']=$ranks[$i]->url;
			$return_rank[$i]['nickname']=$ranks[$i]->nickname;
			//var_dump($records[$i]->score.'----'.$records[$i]->wxid);
		}
		return json($return_rank);
		
	}

	function saveinfo()
	{
		if(!empty(Request::post('nickname')) && !empty(Request::post('iconurl')) && !empty(Request::post('openid')))
		{
			$arecord= Record::where('wxid',Request::post('openid'))->order('score','desc')->limit(1)->find();
			$newimage= new Image;
			if(!empty($arecord))
			{
				if($arecord['score']!=-1)
				{
					$newimage->score=$arecord['score'];
					$newimage->wxid=Request::post('openid');
					$newimage->nickname=Request::post('nickname');
					$newimage->url=Request::post('iconurl');
					$newimage->save();
					return json(['imageurl' => $newimage->id]);
				}
			}
		}
		return json(['imageurl' => "error"]);
	}



    function stulogin()
    {

    	$id=Request::post('id');
    	$pass=Request::post('pass');
    	$pass = $this->rsa($pass);
    	$a=new Ldap($id,$pass);
    	return json($a->run());
    }


   function rsa($data)
   {
    	
    	$data = base64_decode($data);
		$privatekey = "-----BEGIN PRIVATE KEY-----
MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAPHd+0QWL51XbERc
Bwdq7hg18BzPt4saLiO5qNLThU+BVorX9PYyDVqXFUtOFsuwfdtywRkLVlOhk8TJ
ORUVOtTlEMgzHbwWvoVoqs8kQr1bCnzZDTIfLGk31qHApwbGjWFN34oeIXRTPyXQ
RdmIFUTdPCCyMtFeQDgL6wLcCUyPAgMBAAECgYARM51sMTu/r/kGP5lMYMGAPU3P
bsJ6BSmk5s5n+B0yE1vJUiSc4eBrQfWEvpAGeo3o7pdnJZRFLGerBjimFDVzzVXE
6Y67pJJTLRT2dEFnrnaqiPI002FBUyXy02pJzRaRdsqtLpbHQTyktGPi8WEu2GET
VlkMN3c9j/0ICrqQQQJBAPkLchpfOXvFebH4qwHuKYNGbKLEpIHbIFb1AbNfR0yG
5CZJZ1LHOC6y6cGfTdU3Tz+OhDfiOPczq/qoZgC/q+8CQQD4nzglLSuy+fA6uaLi
5q2qDNZmBsRXZSDfKegJe/f4/S0qb05jqJCdYsUzQJa5SUSs5Xv+mu5ikzgFeVCw
vklhAkBhsC6qz41x0m1A9UTG9g/MkZRNaIsK8NRHp8VqAcaq6wKVThe8ba7JCp8M
txtFtnNcf9+3OAKWXOtp4CJaytR7AkAe4UfL9kxTMpAP+zasEBLJ6EZI7dY9NKZc
kYvsgaVPG8McXi7SWgF8SuRLdV5DLUKGZwp7mSq6u6Zdp6/KBBiBAkA0eHZi1/W2
eiEHi5fCK6bsmxgupZOAP+EFHHS7Na4UOfI0RCo/VDKKZgd44pty3IVyVyyj0OG6
Wrq8/pQqv4Wn
-----END PRIVATE KEY-----";
		$decryptData = '';
		if (openssl_private_decrypt($data, $decryptData, $privatekey)) 
		{
		   $result['msg'] = $decryptData;
		   $result['status'] = 1;
		} 
		else 
		{
		   $result['msg'] = '解密失败';
		}
		return $result['msg'];
    }

    function showtozero()
    {
    	$all=$this->RecordModel->select();
    	print_r($all);
    }

}
?>
