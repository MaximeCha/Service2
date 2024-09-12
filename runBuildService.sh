#!/usr/bin/env bash
mvn clean package -DskipTests
PATH_TO_APP="/mnt/c/Users/maxime/Documents/Workspace/Repository/Service2/Service2/src/main/jib"
java -Dotel.javaagent.configuration-file=$PATH_TO_APP/otel-config.properties \
 -javaagent:$PATH_TO_APP/opentelemetry-javaagent.jar \
       -jar /mnt/c/Users/maxime/Documents/Workspace/Repository/Service2/Service2/target/Service2-0.0.1-SNAPSHOT.jar
#      -Dotel.service.name=service2 \
#      -Dotel.traces.exporter=otlp \
#      -Dotel.logs.exporter=otlp \
#      -Dotel.exporter.otlp.endpoint=test \
#mvn compile com.google.cloud.tools:jib-maven-plugin:3.4.3:build \
#      -Djib.from.auth.username=XX \
#      -Djib.from.auth.password=XX \
#      -Djib.to.auth.username=XX \
#      -Djib.to.auth.password=XX \
#       -Djib.image=registry.hub.docker.com/mchjib/spring-jib-app
