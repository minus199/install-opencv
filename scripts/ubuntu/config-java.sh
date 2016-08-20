#!/bin/sh
#
# Created on September 17, 2015
#
# @author: sgoldsmith
#
# Make sure you change this before running install-java.sh script!
#
# Steven P. Goldsmith
# sgjava@gmail.com
#

# Get architecture
arch=$(uname -m)

# Source release info
. /etc/lsb-release

# Temp dir
tmpdir="$HOME/temp"

# Oracle JDK
javahome=/usr/lib/jvm/jdk1.8.0

# Set file based on architecture
if [ "$arch" = "x86_64" ]; then
	jdkurl="http://download.oracle.com/otn-pub/java/jdk/8u102-b14/"
	jdkver="jdk1.8.0_102"
	jdkarchive="jdk-8u102-linux-x64.tar.gz"
elif [ "$arch" = "i586" ] || [ "$arch" = "i686" ]; then
	jdkurl="http://download.oracle.com/otn-pub/java/jdk/8u102-b14/"
	jdkver="jdk1.8.0_102"
	jdkarchive="jdk-8u102-linux-i586.tar.gz"
elif [ "$arch" = "armv7l" ]; then
	jdkurl="http://download.oracle.com/otn-pub/java/jdk/8u102-b14/"
	jdkver="jdk1.8.0_102"
	jdkarchive="jdk-8u102-linux-arm32-vfp-hflt.tar.gz"
elif [ "$arch" = "aarch64" ]; then
	jdkurl="http://download.oracle.com/otn-pub/java/jdk/8u102-b14/"
	jdkver="jdk1.8.0_102"
	jdkarchive="jdk-8u102-linux-arm64-vfp-hflt.tar.gz"
else
	echo "\nNo supported architectures detected!"
	exit 1
fi

# Apache Ant
anturl="http://www.us.apache.org/dist/ant/binaries/"
antarchive="apache-ant-1.9.7-bin.tar.gz"
antver="apache-ant-1.9.7"
anthome="/opt/ant"
antbin="/opt/ant/bin"
