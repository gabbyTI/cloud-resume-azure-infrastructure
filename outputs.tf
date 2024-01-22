output "connection_string" {
  value     = element(azurerm_cosmosdb_account.db.connection_strings, length(azurerm_cosmosdb_account.db.connection_strings) - 1)
  sensitive = true
}

output "web_endpoint" {
  value = azurerm_storage_account.storage_acct.primary_web_endpoint
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_acct.name
}

output "cdn_endpoint" {
  value = azurerm_cdn_endpoint.endpoint.fqdn
}

output "cdn_endpoint_id" {
  value = azurerm_cdn_endpoint.endpoint.id
}