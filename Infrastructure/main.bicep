param environment string = 'dev'
param location string = resourceGroup().location

var storageAccountName = toLower('my${environment}storage')

var containerNames = [
  'logs'
  'data'
  'images'
]

module storage 'storagemodule.bicep' = {
  name: 'deployStorage'
  params: {
    storageAccountName: storageAccountName
    location: location
    environment: environment
    containerNames: containerNames
  }
}
