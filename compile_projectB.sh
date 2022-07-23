#!/bin/bash

set -e

[ -e "./libs/ProjectB.jar" ] && rm -rf ./libs/ProjectB.jar

javac -cp "./libs/ProjectA.jar" -d ./projectB ./projectB/src/*.java
jar cvf ./libs/ProjectB.jar -C projectB com/garbage/bbb

