resource "azurerm_resource_group" "rg-tf" {
  name = var.resource_group_name
  location = var.location
  
}