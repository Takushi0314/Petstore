#! /bin/sh

# シェルファイルが存在するファイルパスの、ひとつ上(Git Root)移動する
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# 実行後、プロジェクトルートのsrcディレクトリにモックサーバが出力されます。
docker run --rm -v `pwd`:/work swaggerapi/swagger-codegen-cli generate -l nodejs-server -i /work/swagger.yml -o /work/src

# 出力されたsrcディレクトリがrootの場合があるので(dockerがroot実行)、所有者を変更する
echo "sudoパスワードを入力してください。"
sudo chown -R $(whoami):$(whoami) ./src
