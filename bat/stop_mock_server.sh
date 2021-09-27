#! /bin/sh

# シェルファイルが存在するファイルパスの、ひとつ上(Git Root)移動する
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# COMPOSE_FILEの指定
export COMPOSE_FILE=docker-compose.dev.yml

# docker-composeの実行
docker-compose stop mock_server
