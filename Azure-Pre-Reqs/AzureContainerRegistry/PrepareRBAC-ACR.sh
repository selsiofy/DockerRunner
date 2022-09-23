#! /bin/bash
az login

appName="GitHub-ACI-Deploy"
acrName="selsiofyregistery"

acrId=$(az acr show --name "$acrName" --query id --output tsv)
az ad sp create-for-rbac --name $appName  --role "AcrPush" --scopes "$acrId"  --sdk-auth
