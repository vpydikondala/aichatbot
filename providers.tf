terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # This will automatically pick the latest 3.x version
    }
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}
