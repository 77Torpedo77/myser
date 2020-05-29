FROM registry.stuhome.com/devops/dockerepo/php-fpm:7-1.0.1

COPY ./ /app/

ARG ENV=dev

RUN set -xe;\
    cd /app;\
    cp nginx.conf /etc/nginx/conf.d/;\
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories;\
    apk update;\
    apk add git nodejs-npm --no-cache;\
    git clone https://gitlab+deploy-token-7:y9E7KyeyxbJGjuL-PxZ4@git.uestc.cn/shuang/lastQuest.git --depth 1;\
    cd lastQuest;\
    npm install --registry=https://registry.npm.taobao.org;\
    npm run build;\
    cp -r build/* ../public/;\
    cd ../;\
    rm -rf lastQuest;\
    apk del git nodejs-npm;\
    mkdir /storage;\
    chmod 0777 /storage;\
    sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 200M/" /usr/local/etc/php/php.ini;\
    sed -i "s/display_errors = On/display_errors = Off/" /usr/local/etc/php/php.ini;\
    sed -i "s/display_startup_errors = On/display_startup_errors = Off/" /usr/local/etc/php/php.ini;\
    sed -i "s/post_max_size = 8M/post_max_size = 200M/" /usr/local/etc/php/php.ini;\
