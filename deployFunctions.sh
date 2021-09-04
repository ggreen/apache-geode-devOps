#!/bin/bash
#  Exports all region data for each member in parallel
source ./setenv.sh
source ./common.library


 $GEMFIRE_HOME/bin/gfsh -e "connect --locator=$LOCATOR_GFSH_CONNECT --security-properties-file=$SECURITY_DIR/gfsecurity.properties --user=$SECURITY_USERNAME --password=$SECURITY_PASSWORD " -e "deploy --jar=./lib/dataTx-geode-extensions-core-2.0.0.jar"
