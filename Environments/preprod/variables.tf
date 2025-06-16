variable "rg_preprod" {
  type = map(object({
    name     = string
    location = string
  }))
  description = "Preprod Resource Group"
}

variable "stg_preprod" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
  description = "Preprod Storage Account"
}

variable "vnet_preprod" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
  description = "Preprod Virtual Network"
}

variable "subnet_preprod" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  description = "Preprod Subnet"
}
