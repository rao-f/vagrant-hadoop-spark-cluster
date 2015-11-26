#!/bin/bash

#java
<<<<<<< e3357ab8c61fe3983ec3eaeffcfadb71c44b5aec
JAVA_ARCHIVE=jdk-8u25-linux-i586.tar.gz
#hadoop
HADOOP_PREFIX=/usr/local/hadoop
HADOOP_CONF=$HADOOP_PREFIX/etc/hadoop
HADOOP_VERSION=hadoop-2.6.0
HADOOP_ARCHIVE=$HADOOP_VERSION.tar.gz
HADOOP_MIRROR_DOWNLOAD=../resources/hadoop-2.6.0.tar.gz
HADOOP_RES_DIR=/vagrant/resources/hadoop
#spark
SPARK_VERSION=spark-1.1.1
SPARK_ARCHIVE=$SPARK_VERSION-bin-hadoop2.4.tgz
SPARK_MIRROR_DOWNLOAD=../resources/spark-1.1.1-bin-hadoop2.4.tgz
SPARK_RES_DIR=/vagrant/resources/spark
SPARK_CONF_DIR=/usr/local/spark/conf
=======
JAVA_ARCHIVE=jre-8u65-linux-i586.gz
#hadoop
#HADOOP_PREFIX=/usr/local/hadoop/
#HADOOP_CONF=$HADOOP_PREFIX/etc/hadoop/
HADOOP_PREFIX=/var/hadoop/
HADOOP_CONF=$HADOOP_PREFIX/conf/
HADOOP_VERSION=hadoop-2.6.2
HADOOP_ARCHIVE=$HADOOP_VERSION.tar.gz
HADOOP_MIRROR_DOWNLOAD=../resources/hadoop-2.6.2.tar.gz
HADOOP_RES_DIR=/vagrant/resources/hadoop/
#spark
SPARK_VERSION=spark-1.5.1
SPARK_ARCHIVE=$SPARK_VERSION-bin-hadoop2.6.tgz
SPARK_MIRROR_DOWNLOAD=../resources/spark-1.5.1-bin-hadoop2.6.tgz
SPARK_RES_DIR=/vagrant/resources/spark/
SPARK_CONF_DIR=/var/spark/conf/
>>>>>>> Finally it vagrant up for all 4 nodes
#ssh
SSH_RES_DIR=/vagrant/resources/ssh
RES_SSH_COPYID_ORIGINAL=$SSH_RES_DIR/ssh-copy-id.original
RES_SSH_COPYID_MODIFIED=$SSH_RES_DIR/ssh-copy-id.modified
RES_SSH_CONFIG=$SSH_RES_DIR/config

function resourceExists {
	FILE=/vagrant/resources/$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

function fileExists {
	FILE=$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

#echo "common loaded"
