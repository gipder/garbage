#!/bin/bash

set -e

[ -e "./libs/ProjectA.jar" ] && rm -rf ./libs/ProjectA.jar

javac -d ./projectA ./projectA/src/*.java
jar cvf ./libs/ProjectA.jar -C projectA/ com/garbage/aaa
