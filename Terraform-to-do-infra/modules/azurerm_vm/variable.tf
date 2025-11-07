variable "virtual_machines" {
  description = "A map of virtual machine configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
  }))
  
}