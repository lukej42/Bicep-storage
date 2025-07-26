// storage.bicep
param storageAccountName string
param location string
param environment string
param containerNames array

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

resource singleContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${storageAccount.name}/default/testcontainer'
  properties: {
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccount
  ]
}
