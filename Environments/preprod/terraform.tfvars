rg_preprod = {
  rg1 = {
    name     = "rg-preprod-01"
    location = "East US"
  }
}

stg_preprod = {
  stg1 = {
    name                     = "stgpreprod454588"
    location                 = "eastus"
    resource_group_name      = "rg-preprod-01"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_preprod = {
  vnet1 = {
    name                = "vnet-preprod-01"
    location            = "East US"
    resource_group_name = "rg-preprod-01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_preprod = {
  subnet1 = {
    name                 = "vnet_preprod-01"
    resource_group_name  = "rg-preprod-01"
    virtual_network_name = "vnet-preprod-01"
    address_prefixes     = ["10.0.0.0/22"]
  }
}
