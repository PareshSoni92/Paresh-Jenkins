terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
   features {}
   subscription_id = "b48675ce-2a2b-4681-bd10-5cd1fa80569a"
}
