resource "azurerm_resource_group" "resource_group" {
  name     = "mounir_stackg"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "mounir_stackg_plan"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.resource_group.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "mounirstackgst"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_function_app" "function_app" {
  name                       = "mounir_stackg_fun"
  location                   = "West Europe"
  resource_group_name        = azurerm_resource_group.resource_group.name
  app_service_plan_id        = azurerm_app_service_plan.app_service_plan.id
  storage_account_name       = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
}
