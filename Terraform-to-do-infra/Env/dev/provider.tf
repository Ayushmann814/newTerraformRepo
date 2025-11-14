terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.45.1"
    }
  }

}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "1289d0de-a5fd-4b7a-8dee-92b8b0ae1184"
}
