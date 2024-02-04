output "connection_string" {
  value     = element(azurerm_cosmosdb_account.db.connection_strings, length(azurerm_cosmosdb_account.db.connection_strings) - 1)
  sensitive = true
}

output "connection_strings" {
  value     = azurerm_cosmosdb_account.db.connection_strings
  sensitive = true
}

output "func_endpoint" {
  value = azurerm_linux_function_app.function.default_hostname
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

output "cdn_endpoint_name" {
  value = azurerm_cdn_endpoint.endpoint.name
}

output "cdn_profile_name" {
  value = azurerm_cdn_profile.profile.name
}

output "github_actions_secret" {
  value = {
    clientId       = azuread_service_principal.sp.client_id
    clientSecret   = azuread_application_password.password.value
    subscriptionId = data.azurerm_client_config.current.subscription_id
    tenantId       = data.azurerm_client_config.current.tenant_id
  }
  sensitive = true
}
