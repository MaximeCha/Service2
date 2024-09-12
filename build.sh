#!/usr/bin/env bash

VERSION=$1

mvn compile com.google.cloud.tools:jib-maven-plugin:3.4.3:build \
       -Djib.from.auth.username=chauvelmaxime@gmail.com       \
       -Djib.from.auth.password=dockerPassword \
       -Djib.to.auth.username=chauvelmaxime@gmail.com \
       -Djib.to.auth.password=dockerPassword \
        -Djib.to.image=maximec44/mch-service2:$VERSION