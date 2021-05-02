#!/bin/bash

echo "[server-startup] Executing injector-secrets-manager secret.env"

if [ $STATUS_SECRETS_VIEW = 'true' ];
then
echo 'See Secrets'
echo "-----------------------------------"
cat /var/secrets/env/secret.env
echo "-----------------------------------"
export $(cat /var/secrets/env/secret.env | xargs)
#source /var/secrets/env/secret.env
rm /var/secrets/env/secret.env
fi

if [ $STATUS_SECRETS_VIEW != 'true' ];
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
