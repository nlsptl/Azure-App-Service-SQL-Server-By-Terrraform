#--------------------------------------------------------------------------------------------
# Values to create Azure Resouces Group
#--------------------------------------------------------------------------------------------

#azurerm_resource_group_name = "app-sql-resouce-group"
location                    = "Central US"

#--------------------------------------------------------------------------------------------
# Values to create Azure SQL Server and Database
#--------------------------------------------------------------------------------------------
#azurerm_sql_server_name       = "sqlqbcdef"
#Sql_server_version            = "12.0"
//azurerm_sql_server_admin_name = "SQLadmin"
//azurerm_sql_server_admin_pass = "SQLpass@123"
#azurerm_sql_database_name     = "SQLDatabseqbcdef"

#--------------------------------------------------------------------------------------------
# Values to get the Key Vault Details 
#--------------------------------------------------------------------------------------------
#azurerm_key_vault_name = "sqlpass1"
#azurerm_key_vault_resource_group = "Test"
#azurerm_key_vault_secret_name = "SQLadmin"

#--------------------------------------------------------------------------------------------
# Values to create Azure Appp Services
#--------------------------------------------------------------------------------------------
azurerm_app_service_name      = ["bhargava9966"] # ["myabcdefapp3", "myabcdefapp4"]  # List of azure app name to create
azurerm_app_service_plan_name = "bhargavaplan9966"     # Azure app service plan name 
azurerm_app_service_plan_tier = "Standard"      
azurerm_app_service_plan_size = "S1"
dotnet_framework_version      = "v4.0"
scm_type                      = "VSTSRM"
dns_zone_resource_group       = "dns-rg"
azurerm_dns_record_name       = "www"
azurerm_dns_zone_name         = "drashay.com"
