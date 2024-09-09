#!/usr/bin/env bash
java -javaagent:./opentelemetry-javaagent.jar \
      -Dotel.service.name=service2 \
      -Dotel.traces.exporter=otlp \
      -Dotel.metrics.exporter=otlp \
       -jar /mnt/c/Users/maxime/Documents/Workspace/Repository/opentelemetry/opentelemetry/target/Service2-0.0.1-SNAPSHOT.jar

