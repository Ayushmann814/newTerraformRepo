variable "virtual_networks" {
  description = "A map of virtual network configurations"
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    subnets = map(object({
      name           = string
      address_prefixes = list(string)
    }))
  }))
}


variable "resource_group_name" {
  
}
variable "location" {
  
}
variable "acr_name" {
    
  description = "The name of the Azure Container Registry"
  type        = map(object({
    name = string
    location = string
    resource_group_name = string
    sku = string
    admin_enabled = optional(bool)
    geolocations =  optional(list(string))
}))

}


variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
    type        = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    default_node_pool_name = string
    vm_size             = string

}))
  
}
