terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.45.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tftodoinfrastate"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "9932c99c-ef31-4bee-b035-70dbddf5d26d"
}