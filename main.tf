provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  features {}
}
#--------------------------------------------------------------------------------------------
# Create a resource group
#--------------------------------------------------------------------------------------------
resource "azurerm_resource_group" "app_resource_group" {
  name     = "app-service-rg-${terraform.workspace}"
  location = var.location
}

#--------------------------------------------------------------------------------------------
# Modules starts
#--------------------------------------------------------------------------------------------
/*
module Sql_Server {
  source                         = "./modules/Sql_Server"
  azurerm_resource_group_name    = azurerm_resource_group.app_resource_group.name
  location                       = azurerm_resource_group.app_resource_group.location
  azurerm_sql_server_name        = var.azurerm_sql_server_name
  Sql_server_version             = var.Sql_server_version
  #azurerm_sql_server_admin_name = var.azurerm_sql_server_admin_name
  #azurerm_sql_server_admin_pass = var.azurerm_sql_server_admin_pass
  azurerm_sql_database_name      = var.azurerm_sql_database_name
  azurerm_key_vault_name         = var.azurerm_key_vault_name
  azurerm_key_vault_resource_group = var.azurerm_key_vault_resource_group
  azurerm_key_vault_secret_name = var.azurerm_key_vault_secret_name
}
*/


module App_Service {
  source                        = "./modules/App_Service"
  azurerm_resource_group_name   = azurerm_resource_group.app_resource_group.name
  location                      = azurerm_resource_group.app_resource_group.location
  azurerm_app_service_name      = var.azurerm_app_service_name
  azurerm_app_service_plan_name = var.azurerm_app_service_plan_name
  azurerm_app_service_plan_tier = var.azurerm_app_service_plan_tier
  azurerm_app_service_plan_size = var.azurerm_app_service_plan_size
  dotnet_framework_version      = var.dotnet_framework_version
  scm_type                      = var.scm_type
  dns_zone_resource_group       = var.dns_zone_resource_group
  azurerm_dns_record_name       = var.azurerm_dns_record_name
  azurerm_dns_zone_name         = var.azurerm_dns_zone_name

}








