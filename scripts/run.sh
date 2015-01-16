#!/bin/bash


cd $(dirname $(readlink -f $0))

if [ "$1" != "" ] ; then
    exec 0>&- # close stdin
    exec 2>&1 # redir stderr into stdout
    exec 1> exhibitor.log
fi

# get JDK8 
# http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html
#

export PATH=/usr/lib/jvm/java-8-oracle/bin/:$PATH
JAVA=$(which java)
mkdir -p /usr/local/exhibitor/config_data
exec $JAVA -jar exhibitor.jar -c none --nodemodification false --port 5252  --noneconfigdir /usr/local/exhibitor/config_data "$@" 
