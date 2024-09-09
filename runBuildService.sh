#!/usr/bin/env bash
mvn clean package -DskipTests
java -javaagent:./opentelemetry-javaagent.jar \
      -Dotel.service.name=service2 \
      -Dotel.traces.exporter=otlp \
      -Dotel.javaagent.debug \
       -jar ./target/Service2-0.0.1-SNAPSHOT.jar
