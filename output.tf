output "resource_group_name" {
  value       = azurerm_resource_group.resource_group.name
  description = "The Name of the RG."
}

output "service_plan_id" {
  value       = azurerm_app_service_plan.app_service_plan.id
  description = "The ID of the service plan."
}

output "function_app_id" {
  value       = azurerm_function_app.function_app.id
  description = "The ID of the App Function."
}
