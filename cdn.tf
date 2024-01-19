
resource "azurerm_cdn_profile" "profile" {
  name                = "cloud-resume-cdn-profile-170120250647"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "endpoint" {
  name                = "gabriel-cloud-resume"
  profile_name        = azurerm_cdn_profile.profile.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  origin_host_header = azurerm_storage_account.storage_acct.primary_web_host
  origin {
    name      = "gabe-cloud-resume"
    host_name = azurerm_storage_account.storage_acct.primary_web_host
  }
}