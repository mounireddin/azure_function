resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.environment}-sg-${var.workload_name}-${var.location_abbreviation}"
  location = var.location
  tags = {
    OwnerEmail = "mounir@mobilabsolutions.com"
  }
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "plan-${var.environment}-${var.workload_name}-${var.location_abbreviation}"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku {
    tier = var.sku_tier #"Standard"
    size = var.sku_size #"S1"
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "st${var.environment}${var.workload_name}${var.location_abbreviation}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = var.account_tier             #"Standard"
  account_replication_type = var.account_replication_type #"LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_function_app" "function_app" {
  name                       = "fun${var.environment}${var.workload_name}${var.location_abbreviation}"
  location                   = var.location
  resource_group_name        = azurerm_resource_group.resource_group.name
  app_service_plan_id        = azurerm_app_service_plan.app_service_plan.id
  storage_account_name       = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
}
