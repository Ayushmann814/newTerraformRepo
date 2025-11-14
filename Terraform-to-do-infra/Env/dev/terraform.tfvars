resource_group_name = "dev-rg"
  location            = "central india"


virtual_networks = {
  vnets = {
    name          = "dev-vnet"
    address_space = ["10.0.0.0/16"]
    location      = "central india"
    resource_group_name = "dev-rg"
    subnets = {
  s1= {
    name = "subnet-1"
    address_prefixes = ["10.0.1.0/24"]
    
  }
 s2= {
    name = "subnet-2"
    address_prefixes = ["10.0.2.0/24"]
    

  }
}
  }
}

acr_name = {
  acr1 ={
    name       = "devacr145024"
    location   = "central india"
    resource_group_name = "dev-rg"

    sku        = "Premium"
 
  }
  }

aks_name = {
  aks1 = {
    name                = "dev-aks-cluster"
    location            = "central india"
    resource_group_name = "dev-rg"
    dns_prefix          = "devaksdns"
    default_node_pool_name = "defaultpool"
    vm_size             = "Standard_D2_v2"
    
  }
}
