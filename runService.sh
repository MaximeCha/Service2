#!/usr/bin/env bash
java -javaagent:./opentelemetry-javaagent.jar \
      -Dotel.service.name=service2 \
      -Dotel.traces.exporter=otlp \
       -jar ./target/Service2-0.0.1-SNAPSHOT.jar
