terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
  backend "s3" {
    resource_group_name = "tfstate-rg"
    storage_account_name = "tfstatefullstack"
    container_name = "tfstate"
    key = "devel/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  client_id         = var.client_id
  client_secret     = var.client_secret
}

module "static_web_app"{
    source = "../../modules/azure-web-app"
    environment = var.environment
    project_name = var.project_name
    location = var.location
    tags = var.tags
}