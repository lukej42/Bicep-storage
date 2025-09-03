# Bicep-storage

This is a simple Bicep template that I have used to create Storage accounts. Over the last year professionally I have been transitioning over to Azure from on-premises and from other tenants and this is one of the Bicep templates that I made use of around a year ago.

To run the bicep template please use the following:

az deployment group create \
  --resource-group bicep-app \
  --template-file main.bicep \
  --parameters environment=dev storageAccountName=ljgdevenv2
