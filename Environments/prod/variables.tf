variable "rg_prod" {
  type = map(object({
    name     = string
    location = string
  }))
  description = "Prod Resource Group"
}

variable "stg_prod" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
  description = "Prod Storage Account"
}

variable "vnet_prod" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

  }))
  description = "Prod Virtual Network"
}

variable "subnet_prod" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  description = "Prod Subnet"
}
