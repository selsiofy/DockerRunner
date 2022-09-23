#! /bin/bash
az login

resourceGroupName="Demo-Azure-Container-Registry"
region="uksouth"
acrName="selsiofyregistery"

# Create a resource resourceGroupName
az group create --name "$resourceGroupName" --location "$region"

# Create an ACR 
az acr create --resource-group "$resourceGroupName" --name "$acrName"  --sku "Basic"  --admin-enabled "false"
