module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rg_details =var.rg_details1
  
}

module "storage_account" {
  depends_on = [module.resource_group]
  source           = "../../modules/azurerm_storage_account"
  storage_accounts = var.storage_accounts

}

module "virtual_network" {
  depends_on = [module.resource_group]
  source = "../../modules/azurerm_virtual_network"
  vnet_details = var.vnet_details

}

module "keyvault"{
  depends_on = [ module.resource_group ]
  source ="../../modules/azurerm_keyvault"
  kv_details = var.kv_details
}