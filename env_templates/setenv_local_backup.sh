#!/bin/bash

# User Settings
export GEM_USER=ggreen

export SSH_IDENTITY=" "

#Installation Settings
export ROOT_DIR=/opt/pivotal
export DOWNLOAD_DIR=$ROOT_DIR/download
export INSTALL_DIR=$ROOT_DIR
export RUNTIME_DIR=$ROOT_DIR/runtime
export JAVA_INSTALL=$INSTALL_DIR/java
export JAVA_FOLDER_NM=jdk1.8.0_181
#export JAVA_HOME=$JAVA_INSTALL/$JAVA_FOLDER_NM
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home/
export GEMFIRE_INSTALL_DIR=$ROOT_DIR/gemfire
export S3_ROOT=https://s3.us-east-2.amazonaws.com/geode-gemfire
export JDK_TAR_BALL=jdk-8u181-linux-x64.tar.gz
export GEM_TAR_BALL=pivotal-gemfire-9.5.1.tgz
export GEMFIRE_FOLDER_NM=pivotal-gemfire-9.5.1

export SECURITY_DIR=$INSTALL_DIR/security

#Backup directory
export BACKUP_DIR=$SOFTWARE_DIR/backup

#SSL/Security Settings
#export CERT_PASSWORD=password
export CERT_VALIDITY_DAYS=3600
export SECURITY_USERNAME=admin
export SECURITY_PASSWORD={cryption}cndnirPoK+LecJOcWhnXmg==
export CRYPTION_KEY=PIVOTAL

# File based security Support
#export SECURITY_MANAGER=io.pivotal.gedi.geode.security.UserSecurityManager
#export SECURITY_USER_PROPERTIES=$PWD/config/users.properties

export SECURITY_MANAGER=io.pivotal.gedi.geode.security.ldap.LdapSecurityMgr

# LDAP support

export SECURITY_LDAP_SERVER_URL=ldap://localhost:389
export SECURITY_LDAP_BASE_DN=ou=system
export SECURITY_LDAP_PROXY_DN=uid=admin,ou=system
export SECURITY_LDAP_PROXY_PASSWORD={cryption}cndnirPoK+LecJOcWhnXmg==
export SECURITY_LDAP_MEMBEROF_ATTRIBUTE=memberOf
export SECURITY_LDAP_UID_ATTRIBUTE=UID
export SECURITY_LDAP_GROUP_ATTRIBUTE=cn
#export SECURITY_LDAP_ACL_GROUP_
export SECURITY_LDAP_ACL_USER_ADMIN=ALL
export SECURITY_USER_PROPERTIES=$PWD/config/ldapUsers.properties


#Runtime Settings
export MEMBER_HOST_NM="$HOSTNAME"
export LOCATOR_HOST="$MEMBER_HOST_NM"

#Disk Stores/Directories
export DISK_STORE_DIR=DISKSTORES
export WORK_DIR=$RUNTIME_DIR/work
export PDX_MAX_OPLOG_SIZE_MB=512
export DATA_DISK_MAX_OPLOG_SIZE_MB=512
export GW_DISK_MAX_OPLOG_SIZE_MB=512
export DISK_STORE_QUEUE_SIZE=40
export DISK_AUTO_COMPACT=true


#Log/Stats
export ENABLE_TIME_STATISTICS=false
export LOG_LEVEL=config
export LOG_DISK_LIMIT_MB=5
export LOG_FILE_LIMIT_MB=1
export STAT_DISK_LIMIT_MB=5
export STAT_FILE_LIMIT_MB=5
export LOC_STATS_FILE=locator_"$MEMBER_HOST_NM".gfs
export DN_STATS_FILE=datanode_"$MEMBER_HOST_NM".gfs

#Memory
export DATA_NODE_HEAP_SIZE=500m
export LOCATOR_HEAP_SIZE=200m
export REDUNDANCY_ZONE="$HOSTNAME"


# Derived Settings
export GEMFIRE_HOME=$GEMFIRE_INSTALL_DIR/$GEMFIRE_FOLDER_NM
export DISTRIBUTED_ID=1
export REMOTE_DISTRIBUTED_ID=2


#export PULSE_HTTP_PORT=17070
export PULSE_HTTP_PORT=0
export REST_HTTP_PORT=18080
export JMX_MANAGER_PORT=11099
export LOC_MEMBERSHIP_PORT_RANGE=10901-10910
export LOC_TCP_PORT=10001
export LOCATOR_PORT=10000
export LOCATOR_NM=locator

export CS_PORT=10100
export CS_TCP_PORT=10002
export CS_MEMBERSHIP_PORT_RANGE=10801-10810
export CS_NM=server
export CS_GW_RECIEVER_PORT=15000-15010

export MEMBER_STAT_FILE="$MEMBER_HOST_NM"_stat.gfd
export REMOTE_LOCATOR_PORT=$LOCATOR_PORT

