variable "rg_prod" {
  type        = map(any)
  description = "Prod Resource Group"
}

variable "stg_prod" {
  type        = map(any)
  description = "Prod Storage Account"
}

variable "vnet_prod" {
  type        = map(any)
  description = "Prod Virtual Network"
}

variable "subnet_prod" {
  type        = map(any)
  description = "Prod Subnet"
}