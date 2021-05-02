#!/bin/bash

echo "[server-startup] Executing injector-secrets-manager secret.env"

if [ $STATUS_SECRETS_VIEW  == 'true' ];
then
echo 'See Secrets'
echo "-----------------------------------"
cat /var/secrets/env/secret.env
echo "-----------------------------------"
export $(cat /var/secrets/env/secret.env | xargs)
#source /var/secrets/env/secret.env
rm /var/secrets/env/secret.env
fi

if [[[ $STATUS_SECRETS_VIEW != 'true' || $STATUS_SECRETS_VIEW  == 'null' || $STATUS_SECRETS_VIEW  == '' ]]];
then
export $(cat /var/secrets/env/secret.env | xargs)
#source /var/secrets/env/secret.env
rm /var/secrets/env/secret.env
fi

echo "-----------------------------------"
echo $FTP_HOST
echo $FTP_USER
echo $FTP_PASS
echo "-----------------------------------"
