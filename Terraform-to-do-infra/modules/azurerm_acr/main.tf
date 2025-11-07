resource "azurerm_container_registry" "acr" {
  for_each = var.acr_name
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku                 = each.value.sku
  admin_enabled       = lookup(each.value, "admin_enabled", false)
   
   dynamic georeplications {
    for_each = each.value.geolocations == null ? [] : each.value.geolocations
    content {
    location                = geolocations.value
    
    zone_redundancy_enabled = true
    tags                    = {}
  }
  
}

}



