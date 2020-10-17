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

/*
#--------------------------------------------------------------------------------------------
# Variables starts for SQL Server
#--------------------------------------------------------------------------------------------
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


variable azurerm_sql_database_name {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_key_vault_name {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_key_vault_resource_group {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_key_vault_secret_name {
  type        = string
  default     = ""
  description = "description"
}

*/

#--------------------------------------------------------------------------------------------
# Variables starts for Azure App Service
#--------------------------------------------------------------------------------------------

variable azurerm_app_service_name {
  type        = list(string)
  #default     = ""
  description = "description"
}

variable azurerm_app_service_plan_name {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_app_service_plan_tier {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_app_service_plan_size {
  type        = string
  default     = ""
  description = "description"
}
variable dotnet_framework_version {
  type        = string
  default     = ""
  description = "description"
}

variable scm_type {
  type        = string
  default     = ""
  description = "description"
}

variable dns_zone_resource_group {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_dns_record_name {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_dns_zone_name {
  type        = string
  default     = ""
  description = "description"
}

variable custom_hostname {
  type        = string
  default     = ""
  description = "description"
}

