#!/bin/bash

echo "[server-startup] Executing injector-secrets-manager secret.env"

if [ -n "$STATUS_SECRETS_VIEW" ]; then
if [ $STATUS_SECRETS_VIEW  = 'true' ];
then
echo 'Loading secrets'
echo "-----------------------------------"
cat /var/secrets/env/secret.env
echo "-----------------------------------"
export $(cat /var/secrets/env/secret.env | xargs)
##source /var/secrets/env/secret.env
rm /var/secrets/env/secret.env
fi
else
#    echo "empty"
echo 'Loading secrets'
export $(cat /var/secrets/env/secret.env | xargs)
rm /var/secrets/env/secret.env
fi

echo "-----------------------------------"
echo " IP : $FTP_HOST"
echo " USER : $FTP_USER"
echo " PASS : $FTP_PASS"
echo "-----------------------------------"

echo "[server-startup] time"
#sleep 3600
