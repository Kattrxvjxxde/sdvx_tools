# 環境構築

```
$ git glone
$ cd sdvx_tools
$ vim .envrc # 下記の .envrc を参照
$ direnv allow
$ docker-compose rum --rm console bash
docker$ mc config host add s3 http://s3:9000 $AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY
docker$ mc mb s3/contents-development
docker$ mc policy set download s3/contents-development
docker$ mc mb s3/contents-test
docker$ mc policy set download s3/contents-test
docker$ bundle exec rake db:create
docker$ yarn install
docker$ exit
$ docker-compose up
```

#### .envrc

```
export USER_ID=`id -u`
export GROUP_ID=`id -g`
export DEV_HOST='127.0.0.1' # VMユーザは、VMのIPに変更
```
