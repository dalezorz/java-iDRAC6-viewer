#!/bin/bash

echo -n 'Host: '
read drachost

echo -n 'Username: '
read dracuser

echo -n 'Password: '
read -s dracpwd
echo

./jre/bin/java -cp avctKVM.jar -Djava.security.properties=idrac.java.security -Djava.library.path=./lib com.avocent.idrac.kvm.Main ip=$drachost kmport=5900 vport=5900 user=$dracuser passwd=$dracpwd apcp=1 version=2 vmprivilege=true "helpurl=https://$drachost:443/help/contents.html"
