terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.22"
    }
  }

  backend "azurernm" {
    resource_group_name  = "rg-terraform-state-manager"
    storage_account_name = "terraformstate34523"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "18b95931-6bb5-431b-a964-40d9c2211486"
}
