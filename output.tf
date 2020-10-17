output "App_Service_Resource_Group" {
  value = azurerm_resource_group.app_resource_group.name
}

output "App_Service_Resource_Group_Location" {
  value = azurerm_resource_group.app_resource_group.location
}

output "example_module_outputs" {
  value = module.App_Service
}