FROM lambci/lambda:build-python3.8

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y nodejs
RUN npm install -g serverless

WORKDIR /code
COPY .pre-commit-config.yaml /code/
RUN git init
RUN pipenv install pre-commit
RUN pipenv run pre-commit run
RUN rm -rf ./.git
RUN rm -rf ./*
