param environment string = 'dev'
param location string = resourceGroup().location

//param storageAccountName string = 'ljgdevenv'
param storageAccountName string = toLower('my${environment}storage')

//var storageAccountName = 'my${environment}storage'
//var storageAccountName = toLower('my${environment}storage')

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
