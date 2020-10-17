#--------------------------------------------------------------------------------------------
# Get the SQL Server Credentilas from Azure Key vault
#---------------------------------------------------------------------------------------------

data "azurerm_key_vault" "keyvault" {
  name                = var.azurerm_key_vault_name
  resource_group_name = var.azurerm_key_vault_resource_group
}

data "azurerm_key_vault_secret" "admin_pass" {
  name         = var.azurerm_key_vault_secret_name
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
#--------------------------------------------------------------------------------------------
# Create Azure SQL Server
#---------------------------------------------------------------------------------------------

resource "azurerm_sql_server" "sql_server" {
  name                         = var.azurerm_sql_server_name
  resource_group_name          = "app-service-rg-${terraform.workspace}"
  location                     = var.location
  version                      = var.Sql_server_version
  administrator_login          = data.azurerm_key_vault.keyvault.name
  administrator_login_password = data.azurerm_key_vault_secret.admin_pass.value

  tags = {
    environment = terraform.workspace
  }
}

#--------------------------------------------------------------------------------------------
# Create Azure SQL Database
#---------------------------------------------------------------------------------------------

resource "azurerm_sql_database" "sql_server_database" {
  name                = var.azurerm_sql_database_name
  resource_group_name = "app-service-rg-${terraform.workspace}"
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name

  tags = {
    environment = terraform.workspace
  }
}
