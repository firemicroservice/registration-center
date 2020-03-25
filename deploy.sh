#!/bin/bash

function clean() {
	mvn clean
}

function package() {
	mvn clean package -DskipTests
}

function run() {
	package && java -jar target/registration-center-1.jar
}

if [ $# -eq 0 ]; then
    echo -e "No commands provided. Defaulting to [run]\n"
    run
    exit 0
fi