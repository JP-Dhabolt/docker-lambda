FROM lambci/lambda:build-python3.8

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y nodejs && \
    npm install -g serverless && \
    yum install -y bash-completion && \
    rm -rf /var/cache/yum

WORKDIR /workspace
COPY .pre-commit-config.yaml /workspace/
RUN git init && \
    pipenv install pre-commit --skip-lock && \
    pipenv run pre-commit run && \
    rm -rf ./*
