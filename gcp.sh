#!/bin/bash

docker container run -it --rm  -e http_proxy=$http_proxy -e https_proxy=$https_proxy -e no_proxy=$no_proxy -v $(pwd):/wd -v ~/.boto:/root/.boto -v ~/.config:/root/.config  ${DOCKER_REGISTRY}gcp gcloud $@

