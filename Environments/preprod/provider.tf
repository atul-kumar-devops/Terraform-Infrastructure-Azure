terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.22"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-manager"
    storage_account_name = "terraformstate34523"
    container_name       = "tfstate"
    key                  = "preprod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cebec115-76a4-41a3-b52f-1485335c2232"
}
