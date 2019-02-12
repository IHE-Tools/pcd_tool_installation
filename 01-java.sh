#!/bin/sh

sudo mkdir -p /opt/java
sudo chown smm:staff /opt/java

cd /opt/java
tar xzf ~smm/Downloads/jdk-8u201-linux-x64.tar.gz

cat > ~/.bash_aliases << EOF
export JAVA_HOME=/opt/java/jdk1.8.0_201
export PATH="/opt/java/jdk1.8.0_201/bin:$PATH"
EOF
