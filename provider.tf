terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.47.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
}
provider "azurerm" {
  //version = "~>2.0.0"
  features {}
}
