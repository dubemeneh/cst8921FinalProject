resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'assignment3storage'
  location: 'canadacentral'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'assignment3plan'
  location: 'canadacentral'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2023-12-01' = {
  name: 'assignment3app'
  location: 'canadacentral'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}


