#!/bin/sh

DIR=`pwd`

mkdir -p .downloads

cd .downloads



# if [ ! -f ${DIR}/blobs/java/openjdk-1.8.0_162.tar.gz ];then
#     curl -L -O -J https://download.run.pivotal.io/openjdk-jdk/trusty/x86_64/openjdk-1.8.0_162.tar.gz
#     bosh add-blob --dir=${DIR} openjdk-1.8.0_162.tar.gz java/openjdk-1.8.0_162.tar.gz
# fi

if [ ! -f ${DIR}/blobs/kibana/kibana-6.2.3-linux-x86_64.tar.gz ];then
    curl -L -O -J https://artifacts.elastic.co/downloads/kibana/kibana-6.2.3-linux-x86_64.tar.gz
    bosh add-blob --dir=${DIR} kibana-6.2.3-linux-x86_64.tar.gz kibana/kibana-6.2.3-linux-x86_64.tar.gz
fi

cd -
