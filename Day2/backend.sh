#!/bin/bash

RESOURCE_GROUP_NAME="tfstate-Day02"
STORAGE_ACCOUNT_NAME="ppanche20accountstore"
CONTAINER_NAME="tfstate"
LOCATION="eastus"

# Create a resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Create a storage account
az storage account create --name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP_NAME --location $LOCATION --sku Standard_LRS

# Create a storage container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME