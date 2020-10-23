# docker-lambda

The images are intended for use in development containers, as well as for CI/CD pipelines.
These are all based from the `lambci/lambda:build-{runtime}` images, with `serverless` Framwork installed, as well as
other useful tooling / configuration (spelled out under each image type).  Where applicable, the expected mounting for
code is under `/workspace`, following the default for VS Code Remote Containers.

## build-python3.8
Python 3.8 Lambda runtime with serverless installed.  Pipenv environment set up, with `pre-commit` installed and
initialized using the [.pre-commit-config.yaml](/build-python3.8/.pre-commit-config.yaml).
