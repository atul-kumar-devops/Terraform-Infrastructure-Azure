module "resource_group_preprod" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg_preprod
}

module "storage_account_preprod" {
  depends_on = [module.resource_group_preprod]
  source     = "../../modules/azurerm_storage_account"
  stg        = var.stg_preprod
}

module "vnet_preprod" {
  depends_on = [module.resource_group_preprod]
  source     = "../../modules/azurerm_virtual_network"
  vnet       = var.vnet_preprod
}

module "subnet_preprod" {
  depends_on = [module.vnet_preprod]
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet_preprod
}
