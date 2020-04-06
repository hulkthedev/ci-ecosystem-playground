#!/usr/bin/env bash

SERVICE=ci_ecosystem_playground_ci_playground_1
CONTAINER=$(docker ps -qf "name=${SERVICE}")

if [[ $CONTAINER == '' ]]; then
    echo "Starting ${SERVICE}..."
    docker-compose up -d
fi

echo "Starting ${SERVICE} PHPUnit Tests..."

docker exec -i ${SERVICE} ./vendor/bin/phpunit \
    --colors=always \
    --configuration tests \
    --coverage-clover=clover.xml \
    --log-junit junit.xml

exit $?