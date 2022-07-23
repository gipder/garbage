#!/bin/bash

set -e

./compile_projectA.sh
./compile_projectB.sh

[ -e "./main.jar" ] && rm -rf ./main.jar
[ -e "./main.manifest" ] && rm -rf ./main.manifest

javac -cp ".:./libs/ProjectB.jar:./libs/ProjectA.jar" -d ./main ./main/src/*.java
echo "Main-Class: main" > ./main.manifest
jar cvfm ./main.jar ./main.manifest -C main/ main.class

java -cp "./libs/ProjectB.jar" -jar main.jar
