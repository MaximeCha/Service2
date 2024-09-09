#!/usr/bin/env bash
mvn clean compile -DSkipTests
./mvnw spring-boot:run
