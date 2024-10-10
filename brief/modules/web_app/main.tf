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
    app_command_line = "cd api && pip install -r requirements.txt && uvicorn main:app --host 0.0.0.0 --port 80" 
    application_stack {
      python_version = "3.10"
    }
  }

}


resource "azurerm_app_service_source_control" "webapp" {
  app_id   = azurerm_linux_web_app.webapp.id
  repo_url = "https://github.com/StevenDelval/template_api.git"
  branch   = "main"
  use_manual_integration = true
}