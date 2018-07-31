#!/usr/bin/env bash
CIRCLE_TOKEN=d0d1fbb632a55f328a03b9ff203f707ae4aeccd0

curl -s --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=7e6c03f7 \
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/hyperknot/baseimage16
