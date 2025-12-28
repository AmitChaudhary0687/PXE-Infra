terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
# backend azurerm {
#   storage_account_name = "pxestorageacc"
#   resource_group_name = "pxe-rg"
#   container_name = "pxecontainer"
#   key = "dev.terraform.tfstate"
# }

}

provider "azurerm" {
  features {

    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = "2c1cd570-99ae-494e-8979-5f454e2afe08"
}