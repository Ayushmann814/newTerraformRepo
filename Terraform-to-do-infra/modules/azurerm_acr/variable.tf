
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

