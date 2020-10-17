variable azurerm_resource_group_name {
  type        = string
  default     = ""
  description = "description"
}


variable location {
  type        = string
  default     = ""
  description = "description"
}

variable azurerm_app_service_name {
  type = list(string)
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

variable "default_documents" {
  description = "Default index documents"
  default     = ["index.html"]
}

variable "http2_enabled" {
  description = "Enables HTTP/2 protocol"
  default     = true
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


