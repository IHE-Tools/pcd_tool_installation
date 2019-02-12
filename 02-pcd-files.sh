#!/bin/sh

sudo mkdir -p /opt/pcd
sudo chown smm:staff /opt/pcd

echo This next step assumes you get the file pcdtool_16384_1-0-0-beta.zip
echo from someone. That file inludes a war file and installation instructions.
echo In the case of the current scripts, we have a newer war.
echo You will have to do some extra work here.

#unzip -d /opt/pcd ~smm/Downloads/PCD/pcdtool_16384_1-0-0-beta.zip
