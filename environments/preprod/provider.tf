
terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 5.3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "27-rg"
    storage_account_name = "stoargeaccoun1"
    container_name       = "container12"
    key                  = "tfstate12"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}

  subscription_id = "24613c55-f186-46f4-859d-6eed8878ac10"
}
