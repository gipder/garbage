#!/bin/bash

set -e

[ -e "./libs/ProjectA.jar" ] && rm -rf ./libs/ProjectA.jar

javac -d ./projectA ./projectA/src/*.java
echo "Main-Class: com.garbage.aaa.ProjectA" > ./projectA/projectA.manifest
jar -cvfm ./libs/ProjectA.jar ./projectA/projectA.manifest -C projectA/ com/garbage/aaa/ProjectA.class
#java -jar ./libs/ProjectA.jar
