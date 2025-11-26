module "resource_group" {
  source              = "../../modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"
  depends_on = [ module.resource_group ]
  virtual_networks      = var.virtual_networks
      }
  
module "acr" {
  source              = "../../modules/azurerm_acr"
  acr_name           = var.acr_name
 
 
  
}

module "aks" {
  source = "../../modules/azurerm_aks"

aks_name = var.aks_name
}
