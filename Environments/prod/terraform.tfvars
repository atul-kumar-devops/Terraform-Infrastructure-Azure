rg_prod = {
  rg1 = {
    name     = "rg-prod-01"
    location = "East US"
  }
}

stg_prod = {
  stg1 = {
    name                     = "stgprod454588"
    location                 = "eastus"
    resource_group_name      = "rg-prod-01"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_prod = {
  vnet1 = {
    name                = "vnet-prod-01"
    location            = "East US"
    resource_group_name = "rg-prod-01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_prod = {
  subnet1 = {
    name                 = "vnet_prod-01"
    resource_group_name  = "rg-prod-01"
    virtual_network_name = "vnet-prod-01"
    address_prefixes     = ["10.0.0.0/22"]
  }
}
