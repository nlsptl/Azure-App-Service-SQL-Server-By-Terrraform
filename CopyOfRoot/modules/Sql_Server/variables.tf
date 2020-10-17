/*
variable azurerm_resource_group_name {
  type        = string
  default     = ""
  description = "description"
}
*/

variable location {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_sql_server_name {
  type        = string
  default     = ""
  description = "description"
}

variable Sql_server_version {
  type        = string
  default     = ""
  description = "description"
}
/*
variable azurerm_sql_server_admin_name {
  type        = string
  default     = ""
  description = "description"
}


variable azurerm_sql_server_admin_pass {
  type        = string
  default     = ""
  description = "description"
}
*/

variable azurerm_sql_database_name {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_key_vault_name {
  type        = string
  default     = "sqlpass1"
  description = "description"
}

variable azurerm_key_vault_resource_group {
  type        = string
  default     = "Test"
  description = "description"
}

variable azurerm_key_vault_secret_name {
  type        = string
  default     = "SQLadmin"
  description = "description"
}
