FROM swaggerapi/swagger-codegen-cli:2.4.14 as builder
WORKDIR /mock-seed
# ホストマシンのswagger.ymlをコピー
COPY ./swagger.yml ./
WORKDIR /mock-server
# モックサーバーのファイルを作成
RUN java -jar /opt/swagger-codegen-cli/swagger-codegen-cli.jar \
    generate -i /mock-seed/swagger.yml -l nodejs-server -o ./
