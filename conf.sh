#!/bin/bash

echo "[server-startup] Executing injector-secrets-manager secret.env"

if [ $STATUS_SECRETS_VIEW  = 'true' ];
then
echo 'test secrets'
fi

#if [ $STATUS_SECRETS_VIEW  == "false" ];
#then
#echo 'Loading secrets'
#export $(cat /var/secrets/env/secret.env | xargs)
#source /var/secrets/env/secret.env
#rm /var/secrets/env/secret.env
#fi


echo 'Loading secrets'
echo "-----------------------------------"
cat /var/secrets/env/secret.env
echo "-----------------------------------"
export $(cat /var/secrets/env/secret.env | xargs)
##source /var/secrets/env/secret.env
rm /var/secrets/env/secret.env

echo "-----------------------------------"
echo $FTP_HOST
echo $FTP_USER
echo $FTP_PASS
echo "-----------------------------------"
