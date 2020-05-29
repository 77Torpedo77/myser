



## 登录信息门户

#### 接口URL
> http://星辰大海.网址/users/stulogin

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| id     | - |  必填 | 学号 |
| pass     | - |  必填 | rsa+base64密码 |



## 提交

#### 接口URL
> http://星辰大海.网址/users/submit

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| openid     | 666 |  必填 | 微信的openid，用于标识用户 |
| examid     | 21 |  必填 | 每一次考试的id |
| correct[0]     | 1 |  必填 | 答案数组，A-D对应1-4 |
| correct[1]     | 3 |  必填 | 答案数组，A-D对应1-4 |
| correct[2]     | 2 |  必填 | - |
| correct[3]     | 3 |  必填 | - |
| correct[4]     | 2 |  必填 | - |
| correct[5]     | 4 |  必填 | - |
| correct[6]     | 3 |  必填 | - |
| correct[7]     | 2 |  必填 | - |
| correct[8]     | 2 |  必填 | - |
| correct[9]     | 2 |  必填 | - |

#### 成功响应示例
```javascript
{
    "try": 2
}
```

| 参数        | 示例值   |  参数描述  |
| :--------   | :-----  | :----  |
| try     | - | 用户答题次数，最多2次，大于两次时返回3，发生错误时返回-1 |

#### 错误响应示例
```javascript
try=-1错误
try=3尝试次数大于2次
```

| 参数        | 示例值   |  参数描述  |
| :--------   | :-----  | :----  |
| try     | - | 用户答题次数，最多2次，大于两次时返回3，发生错误时返回-1 |

## 存储用户信息
存信息，用于展示排行榜
#### 接口URL
> http://星辰大海.网址/users/saveinfo

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| nickname     | xiaoming |  必填 | - |
| iconurl     | www.65465.asd |  必填 | - |
| openid     | 666 |  必填 | - |




#### 接口URL
> route

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| start     | - |  必填 | 起点 |
| end     | - |  必填 | 终点 |
| fileid     | - |  必填 | 票据文件id |


#### 错误响应示例
```javascript
errcode:-1 有参数为空
```


## 获取问题

#### 接口URL
> http://星辰大海.网址/users/getproblem

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| openid     | 666 |  必填 | 微信的openid，用于标识用户 |

#### 成功响应示例
```javascript
{
	"examid": "7",
	"data": [
		{
			"id": 21,
			"question": "清水河校区主楼一共有几层",
			"options": "5,6,7,8",
			"answer": "8",
			"type": "基础知识",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 11,
			"question": "我电本科专业共有多少个",
			"options": "63,61,56,51",
			"answer": "63",
			"type": "基础知识",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 37,
			"question": "清水河校区哪个食堂的男生最多",
			"options": "银桦餐厅,桃园餐厅,家园餐厅,朝阳餐厅",
			"answer": "朝阳餐厅",
			"type": "基础知识",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 10,
			"question": "我电有几个国家级重点实验室",
			"options": "2,3,4,5",
			"answer": "4",
			"type": "基础知识",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 50,
			"question": "“明明可以靠颜值，却偏要靠实力。“她是我电最年轻的副院长，她于_____年来我电工作",
			"options": "2014,2015,2016,2017",
			"answer": "2015",
			"type": "名教师",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 55,
			"question": "下列选项中，在大一必修的两门课是",
			"options": "毛概与概率论,微积分和信号与系统,大学物理和马原,近代史和思修",
			"answer": "近代史和思修",
			"type": "名课程",
			"show_time": 1,
			"pass_time": 1
		},
		{
			"id": 62,
			"question": "刘若英来过我电_____次",
			"options": "1,2,3,4",
			"answer": "3",
			"type": "名讲座",
			"show_time": 0,
			"pass_time": 0
		},
		{
			"id": 84,
			"question": "2019年成都版快闪《我和我的祖国》，我电共有多少学子参加",
			"options": "40人,50人,60人,70人",
			"answer": "70人",
			"type": "大事记",
			"show_time": 1,
			"pass_time": 0
		},
		{
			"id": 83,
			"question": "我电在2014-2018年中国高校创新人才培养暨学科竞赛评估中排名第几",
			"options": "1,2,3,4",
			"answer": "4",
			"type": "大事记",
			"show_time": 1,
			"pass_time": 0
		},
		{
			"id": 64,
			"question": "我电清水河校区幼儿园建设于几号启动",
			"options": "5.1,5.11,6.1,6.11",
			"answer": "6.1",
			"type": "大事记",
			"show_time": 0,
			"pass_time": 0
		}
	]
}
```

| 参数        | 示例值   |  参数描述  |
| :--------   | :-----  | :----  |
| examid     | - | 每一次考试的id |
| data     | - | 返回一个数组 |
| data.id     | - | int，问题的id |
| data.question     | - |  text，问题的标题 |
| data.options     | - | text,问题的选项 |
| data.answer     | - | text，答案 |
| data.type     | - | text，分类 |
| data.show_time     | - |  int，本题被答次数 |
| data.pass_time     | - | int，答对数 |

#### 错误响应示例
```javascript
页面错误，请稍后再试
```





## 获取用户信息

#### 接口URL
> http://星辰大海.网址/users/getuserinfo

#### 请求方式
> POST

#### Content-Type
> multipart/form-data






#### 请求Body参数

| 参数        | 示例值   | 是否必填   |  参数描述  |
| :--------   | :-----  | :-----  | :----  |
| openid     | 666 |  必填 | 微信的openid，用于标识用户 |

#### 成功响应示例
```javascript
{
    "try": 1
}
```

| 参数        | 示例值   |  参数描述  |
| :--------   | :-----  | :----  |
| try     | - | 用户答题次数，最多2次，大于两次时返回3，发生错误时返回-1 |
| score     | - | 该openid对应用户分数 |

#### 错误响应示例
```javascript
{
    "try": -1
}
```

| 参数        | 示例值   |  参数描述  |
| :--------   | :-----  | :----  |
| try     | - | 用户答题次数，最多2次，大于两次时返回3，发生错误时返回-1 |
| score     | - | 该openid对应用户分数 |



## 获取排行榜

#### 接口URL
> http://星辰大海.网址/users/getrank

#### 请求方式
> POST

#### Content-Type
> multipart/form-data







#### 成功响应示例
```javascript
[
	{
		"wxid": "666",
		"score": 100
	},
	{
		"wxid": "66",
		"score": 50
	},
	{
		"wxid": "6",
		"score": 40
	},
	{
		"wxid": "7",
		"score": 40
	},
	{
		"wxid": "1",
		"score": 30
	},
	{
		"wxid": "8",
		"score": 30
	},
	{
		"wxid": "2",
		"score": 20
	},
	{
		"wxid": "3",
		"score": 20
	},
	{
		"wxid": "4",
		"score": 10
	}
]
```






## 微信check
微信后台认证接口
#### 接口URL
> http://星辰大海.网址/users/checksignature

#### 请求方式
> POST

#### Content-Type
> multipart/form-data











## 获取用户微信个人信息

#### 接口URL
> http://星辰大海.网址/users/getopenid

#### 请求方式
> POST

#### Content-Type
> multipart/form-data







#### 成功响应示例
```javascript
用户微信信息，昵称头像性别城市等，json格式
```






------

## 代码部署    

### 访问目录  

建议是将public文件夹设置为访问目录，然后给予访问上级目录的权限，并将runtime文件设为777权限。  

当然也可以不那么做，那么所有接口前面都要加public，比如public/users/getuserinfo  

### URL重写

假设上面将访问目录设为public，默认的接口URL其实是index.php/users/getuserinfo  

这个index.php是可以隐藏的，而且也比较简单  

[thinkphp的开发文档](https://www.kancloud.cn/manual/thinkphp5_1/353955)中，针对Apache和Nginx的重写方法，已经写得非常详细了，我这里也不复述了。  

如果这两者都没做，那么URL就是public/index.php/users/getuserinfo  

### 数据库

数据库的用户名、密码等，在config/database.php下修改。  

目录下提供了一个biye2020.sql，用来生成数据库结构。  

导入后，后台的默认用户名是star，密码是star  

--------

## 后台管理  

访问/admin/即可  

默认用户名star，密码star
