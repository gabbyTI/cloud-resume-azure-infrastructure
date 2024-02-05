data "azurerm_subscription" "primary" {
}

data "azurerm_client_config" "current" {
}

data "azurerm_role_definition" "builtin" {
  name = "Contributor"
}

resource "random_uuid" "rbac_name" {
}

resource "azurerm_role_assignment" "rbac" {
  name                 = random_uuid.rbac_name.result
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = data.azurerm_role_definition.builtin.name
  principal_id   = azuread_service_principal.sp.id
  principal_type = "ServicePrincipal"
}

resource "azuread_application" "git" {
  display_name = "Github Actions"
}

resource "azuread_service_principal" "sp" {
  client_id = azuread_application.git.client_id
}

resource "azuread_application_password" "password" {
  application_id = azuread_application.git.id
}
