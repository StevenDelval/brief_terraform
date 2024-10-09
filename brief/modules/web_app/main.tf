data "azurerm_service_plan" "existing_asp" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_linux_web_app" "webapp" {
  name                = var.app_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id = data.azurerm_service_plan.existing_asp.id
  site_config {
  }
}