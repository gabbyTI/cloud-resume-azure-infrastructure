resource "azurerm_storage_account" "storage_acct" {
  name                     = "gabecloudresume"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = "index.html"
    error_404_document = "error/404.html"
  }
}
