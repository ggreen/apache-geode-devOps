#!/bin/bash
# Setup PDX to support read-serialized=true with a disk store.
# Only needed for new cluster or rebuilt clusters with a new PDX disk store

source ./setenv.sh
source ./common.library
#---------------------------------
# Print out for debugging
echo DISTRIBUTED_ID=$DISTRIBUTED_ID
echo REMOTE_DISTRIBUTED_ID=$REMOTE_DISTRIBUTED_ID


# Configure PDX cache server
$GEMFIRE_HOME/bin/gfsh -e ="connect --locator=$LOCATOR_GFSH_CONNECT --security-properties-file=$SECURITY_DIR/gfsecurity.properties --user=$SECURITY_USERNAME --password=$SECURITY_PASSWORD " -e "create disk-store --dir=$DISK_STORE_DIR/PDX --name=PDX_DISK --max-oplog-size=$PDX_MAX_OPLOG_SIZE_MB --auto-compact=$DISK_AUTO_COMPACT --allow-force-compaction=true"  -e "configure pdx --auto-serializable-classes=.* --read-serialized=true --disk-store=PDX_DISK"
