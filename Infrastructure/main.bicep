param environment string = 'dev'
param location string = resourceGroup().location

//param storageAccountName string = 'ljgdevenv'
//var storageAccountName = 'my${environment}storage'
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
