#!/usr/bin/env bash
mvn clean package -DskipTests
PATH_TO_APP="/mnt/c/Users/maxime/Documents/Workspace/Repository/Service2/Service2"
java -javaagent:$PATH_TO_APP/opentelemetry-javaagent.jar \
      -Dotel.service.name=service2 \
      -Dotel.traces.exporter=otlp \
      -Dotel.metrics.exporter=console \
       -jar $PATH_TO_APP/target/Service2-0.0.1-SNAPSHOT.jar
