variable "rg_preprod" {
  type        = map(any)
  description = "Preprod Resource Group"
}

variable "stg_preprod" {
  type        = map(any)
  description = "Preprod Storage Account"
}

variable "vnet_preprod" {
  type        = map(any)
  description = "Preprod Virtual Network"
}

variable "subnet_preprod" {
  type        = map(any)
  description = "Preprod Subnet"
}