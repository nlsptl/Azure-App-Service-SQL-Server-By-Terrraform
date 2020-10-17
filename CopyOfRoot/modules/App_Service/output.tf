output "Azure_App_Service_Name" {
  value       = azurerm_app_service.app_service.*.name
}

output "Custom_Hostname" {
  value       = azurerm_app_service_custom_hostname_binding.app_service_binding.*.hostname
}