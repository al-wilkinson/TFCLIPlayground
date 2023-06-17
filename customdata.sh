#!/bin/bash

sudo apt-get update
sudo apt-get install jq -y

echo "it did run at $(date)" > confirm.txt
echo 'ACCESS_TOKEN=$(curl -H "Metadata:true" "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net" | jq -r ".access_token")' > ~/getsecret.sh
echo 'curl -H "Authorization: Bearer $ACCESS_TOKEN" "https://alwkvt134153a.vault.azure.net/secrets/supersecret?api-version=7.0"' >> ~/getsecret.sh
chmod u+x getsecret.sh


