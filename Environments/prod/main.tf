module "resource_group_preprod" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg_prod
}

module "storage_account_preprod" {
  depends_on = [module.resource_group_preprod]
  source     = "../../modules/azurerm_storage_account"
  stg        = var.stg_prod
}

module "vnet_preprod" {
  depends_on = [module.resource_group_preprod]
  source     = "../../modules/azurerm_virtual_network"
  vnet       = var.vnet_prod
}

module "subnet_preprod" {
  depends_on = [module.vnet_preprod]
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet_prod
}
