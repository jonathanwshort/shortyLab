targetScope = 'resourceGroup'

module vnet 'shortyvNet0.bicep' = {
  name: 'vnetModule'
  params: {
    vnetName: 'shortyvNet0'
    addressSpace: '192.168.0.0/16'
    subnets: [
      {
        name: 'default'
        addressPrefix: '192.168.0.0/24'
      }
      {
        name: 'shortySubNet1'
        addressPrefix: '192.168.1.0/24'
      }
      {
        name: 'shortySubNet2'
        addressPrefix: '192.168.2.0/24'
      }
    ]
  }
}

module storage 'shortyStore0.bicep' = {
  name: 'storageModule'
  params: {
    storageAccountName: 'shortystore0'
    containerName: 'shortyContainer0'
    fileShareName: 'shortyFileShare0'
  }
}
