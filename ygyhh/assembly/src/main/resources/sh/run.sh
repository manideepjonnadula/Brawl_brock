#!/bin/sh
#
# Current directory
#
CURRENT_DIR=`pwd`
#
# Gemini Home
#
export GW_HOME="$CURRENT_DIR/osgi"
export GW_CLASSPATH=".:osgi/org.eclipse.osgi-@org.eclipse.osgi.version@.jar:osgi/tqlab-sense-hook-@com.tqlab.sense.version@.jar"
export GW_MAINCLASS="org.eclipse.core.runtime.adaptor.EclipseStarter"
export LOGGING_CONFIG="$CURRENT_DIR/config/logging.properties"

# Delete cache
# cd "$GW_HOME"/configuration
# rm -rf org.eclipse.osgi *.log
# cd "$CURRENT_DIR"

pids=`lsof -i:8080|awk '{print $2}'`
echo $pids
for pid in $pids;
do
	echo $pid;
	kill -9 $pid >/dev/null 2>&1
done

#java -Djava.util.logging.config.file=$LOGGING_CONFIG -classpath $GW_CLASSPATH $GW_MAINCLASS -console 5555
java -Xdebug -Xrunjdwp:transport=dt_socket,suspend=n,server=y,address=8000 -Djava.util.logging.config.file=$LOGGING_CONFIG -classpath $GW_CLASSPATH $GW_MAINCLASS -console 5555
