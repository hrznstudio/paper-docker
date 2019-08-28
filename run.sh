#!/bin/bash
set -e

sed -i "s/{{MOTD}}/&1${HOSTNAME}/" /paper/server.properties
sed -i "s/{{PORT}}/&1${PORT}/" /paper/server.properties
sed -i "s/{{QUERYPORT}}/&1${QUERYPORT}/" /paper/server.properties
sed -i "s/{{PLAYERCOUNT}}/&1${PLAYERCOUNT}/" /paper/server.properties

COMMAND="java -Xmx$JAVA_MEMORY -Xms$JAVA_MEMORY $JAVA_ARGS -jar Paper.jar"
echo "Running Paper - $COMMAND"

cd /paper
eval $COMMAND