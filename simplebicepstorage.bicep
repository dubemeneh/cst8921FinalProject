resource bicepstorage 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: 'bicepdemoeneh'
  location: 'eastus2'
  sku: {
    name: 'Standard_LRS'

  }
  kind: 'StorageV2'
}
