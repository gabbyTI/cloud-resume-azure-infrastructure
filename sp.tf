data "azurerm_client_config" "current" {
}

data "azurerm_role_definition" "builtin" {
  name = "Contributor"
}

resource "azurerm_role_assignment" "rbac" {
  name               = "6ca4bb53-9bc1-bbbf-5473-4b0f8b663dee"
  scope              = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  role_definition_name = data.azurerm_role_definition.builtin.name
  principal_id       = azuread_service_principal.sp.id
  principal_type     = "ServicePrincipal"
}

resource "azuread_application" "git" {
  display_name = "Github Actions"
}

resource "azuread_service_principal" "sp" {
  client_id = azuread_application.git.client_id
}

resource "azuread_service_principal_password" "sp_password" {
  service_principal_id = azuread_service_principal.sp.id
}

resource "azuread_application_password" "password" {
  application_id = azuread_application.git.id
}

