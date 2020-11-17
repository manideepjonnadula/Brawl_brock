#!/bin/sh
dir=`pwd`
echo "Deploy project ..... ....."
mvn clean

mvn install
cd assembly
mvn dependency:copy
mvn antrun:run
cd $dir

echo "Deploy over"

echo "Start OSGI Framework ..... ....."
cd target
## 
#chmod 755 run.sh

## Run osgi framework
./run.sh
