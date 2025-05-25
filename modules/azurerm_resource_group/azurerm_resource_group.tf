resource "azurerm_resource_group" "generic_resource_group" {
  for_each = var.rg
  
  name     = each.value.name
  location = each.value.location
}