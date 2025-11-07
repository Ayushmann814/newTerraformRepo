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
