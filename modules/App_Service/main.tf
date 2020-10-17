#--------------------------------------------------------------------------------------------
# Create Azure App Service Plan
#--------------------------------------------------------------------------------------------

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.azurerm_app_service_plan_name
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name

  sku {
    tier = var.azurerm_app_service_plan_tier
    size = var.azurerm_app_service_plan_size
  }

  tags = {
    environment = terraform.workspace
  }
}

#--------------------------------------------------------------------------------------------
# Create Azure App Service
#--------------------------------------------------------------------------------------------

resource "azurerm_app_service" "app_service" {
  count               = length(var.azurerm_app_service_name)
  name                = "${var.azurerm_app_service_name[count.index]}-${terraform.workspace}"
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  site_config {
    always_on                = "true"
    default_documents        = var.default_documents
    #ftps_state              = var.enable_ftp
    http2_enabled            = var.http2_enabled
    dotnet_framework_version = var.dotnet_framework_version
    scm_type                 = var.scm_type
  }

  tags = {
    environment = terraform.workspace
  }
}

#--------------------------------------------------------------------------------------------
# Creating CNAME record to existing DNS Zone
#--------------------------------------------------------------------------------------------

resource "azurerm_dns_cname_record" "app_dns" {
  count               = length(var.azurerm_app_service_name)
  name                = var.azurerm_dns_record_name
  record              = "${var.azurerm_app_service_name[count.index]}-${terraform.workspace}.azurewebsites.net"
  resource_group_name = var.dns_zone_resource_group
  ttl                 = 1
  zone_name           = var.azurerm_dns_zone_name
}

#--------------------------------------------------------------------------------------------
# Creating Custom Hostname Binding
#--------------------------------------------------------------------------------------------

resource "azurerm_app_service_custom_hostname_binding" "app_service_binding" {
  count               = length(var.azurerm_app_service_name)
  hostname            = "${var.azurerm_dns_record_name}.${var.azurerm_dns_zone_name}"
  app_service_name    = "${var.azurerm_app_service_name[count.index]}-${terraform.workspace}"
  resource_group_name = var.azurerm_resource_group_name

  depends_on = [azurerm_dns_cname_record.app_dns, azurerm_app_service.app_service]
}
