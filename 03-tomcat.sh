#!/bin/sh
BASE=/opt/pcd/pcdtool_16384_1-0-0-beta
TOMCAT=apache-tomcat-8.5.38

touch /tmp/$TOMCAT.zip
rm    /tmp/$TOMCAT.zip

wget -O /tmp/$TOMCAT.zip\
	ftp://mirror.reverse.net/pub/apache/tomcat/tomcat-8/v8.5.38/bin/$TOMCAT.zip

touch $BASE/$TOMCAT
rm -r $BASE/$TOMCAT
unzip -d $BASE /tmp/$TOMCAT.zip


cp $BASE/pcdtool-20190122.war	$BASE/$TOMCAT/webapps/pcdtool.war
cp context.xml			$BASE/$TOMCAT/conf
chmod +x go.sh stop.sh
cp go.sh stop.sh		$BASE/$TOMCAT
chmod +x			$BASE/$TOMCAT/bin/*sh
