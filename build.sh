#!/usr/bin/env bash

set -e 

VERSION="1.0.0"

docker-compose build

docker tag discover "docker.sendgrid.net/sendgrid/mcauto-test-cluster-discover:${VERSION}"
docker push "docker.sendgrid.net/sendgrid/mcauto-test-cluster-discover:${VERSION}"

docker tag redis:discover "docker.sendgrid.net/sendgrid/mcauto-test-cluster-redis:${VERSION}"
docker push "docker.sendgrid.net/sendgrid/mcauto-test-cluster-redis:${VERSION}"
