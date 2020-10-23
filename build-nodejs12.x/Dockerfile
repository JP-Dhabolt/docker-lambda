FROM lambci/lambda:build-nodejs12.x

RUN npm install -g serverless && \
    yum install -y bash-completion && \
    rm -rf /var/cache/yum
