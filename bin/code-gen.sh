#!/bin/bash

GENERATOR_VERSION=4.3.1
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${GENERATOR_VERSION}/openapi-generator-cli-${GENERATOR_VERSION}.jar -O /tmp/openapi-generator-cli.jar

java -jar /tmp/openapi-generator-cli.jar generate \
-i https://petstore.swagger.io/v2/swagger.json \
--api-package uk.gov.hmcts.petstore.client.api \
--model-package uk.gov.hmcts.petstore.client.model \
--invoker-package uk.gov.hmcts.petstore.client.invoker \
--group-id uk.gov.hmcts.reform \
--artifact-id pet-store-client \
--artifact-version 0.0.1-SNAPSHOT \
-g spring -p java8=true --library spring-cloud \
-o .
