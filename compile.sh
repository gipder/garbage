#!/bin/bash

set -e

./compile_projectA.sh
./compile_projectB.sh

[ -e "./main.jar" ] && rm -rf ./main.jar
[ -e "./main.manifest" ] && rm -rf ./main.manifest

find ./main -name "*.class" -delete
echo "main compile started"
javac -cp ".:./libs/ProjectA.jar:./libs/ProjectB.jar" -d ./main ./main/src/*.java
echo "Main-Class: main.main" > ./main.manifest
echo "Class-Path: ProjectA.jar ProjectB.jar " >> ./main.manifest
jar cvfm ./main.jar ./main.manifest -C main main/
echo "main compile done"

java -cp "./libs/ProjectA.jar:./libs/ProjectB.jar:./main.jar" main.main
