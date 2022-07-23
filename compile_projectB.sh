#!/bin/bash

set -e

[ -e "./libs/ProjectB.jar" ] && rm -rf ./libs/ProjectB.jar

javac -cp "./libs/ProjectA.jar" -d ./projectB ./projectB/src/*.java
echo "Main-Class: com.garbage.bbb.ProjectB" > ./projectB/projectB.manifest
echo "Class-Path: ProjectA.jar" >> ./projectB/projectB.manifest
jar cvfm ./libs/ProjectB.jar ./projectB/projectB.manifest -C projectB com/garbage/bbb
#java -cp "./libs/ProjectA.jar" -jar ./libs/ProjectB.jar
