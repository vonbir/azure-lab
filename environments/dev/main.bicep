targetScope = 'resourceGroup'

param storageAccountName string ='stdevbrylle001'
param location string ='eastus'
param storageSku string ='Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {

  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: storageSku
  }
}
output storageAccountId string = storageAccount.id

