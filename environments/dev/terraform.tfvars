rg_details1 = {
  rg1 = {
    name     = "pxe-rg"
    location = "East Us"
  }
}
storage_accounts = {
  "stgacc1" = {
    name                     = "pxestorageacc"
    location                 = "East US"
    resource_group_name      = "pxe-rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_details = {
  vnet1 = {
    vnet_name           = "vnet-pxe"
    location            = "East US"
    resource_group_name = "pxe-rg"
    address_space       = ["10.0.0.0/24"]

    subnets = {
      snet1 = {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/29"]
      }
      snet2 = {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/29"]
      }
    }
  }

}

kv_details = {
  kv1={
  kv_name                        = "pxe-kv"
  location                    = "East US"  
  resource_group_name         = "rg-pxe"
  enabled_for_disk_encryption = true
  tenant_id                   = ""
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  sku_name = "standard"

  
    
}
  
}