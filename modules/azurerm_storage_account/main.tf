resource "azurerm_storage_account" "stgacc" {
    for_each = var.storage_accounts
    name = "pxestorageacc"
    location= "East US"
    resource_group_name = "pxe-rg"
    account_tier = "Standard"
    account_replication_type = "LRS"
}