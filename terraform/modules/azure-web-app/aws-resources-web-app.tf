resource "azurerm_resource_group" "web_app_rg" {
  name     = "${var.project_name}-web-app-${var.environment}"
  location = var.location
}

resource "azurerm_storage_account" "web_app_st" {
  name                     = "${var.project_name}stfschallenge${var.environment}"
  resource_group_name      = azurerm_resource_group.web_app_rg.name
  location                 = azurerm_resource_group.web_app_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
   index_document = "index.html"
   error_404_document = "404.html" 
  }

  tags = var.tags
}

resource "azurerm_cdn_profile" "web_app_cdn" {
  name                = "${var.project_name}cdn${var.environment}"
  location            = azurerm_resource_group.web_app_rg.location
  resource_group_name = azurerm_resource_group.web_app_rg.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "web_app_cdn_endpoint" {
  name                = "${var.project_name}-cdn-endpoint-${var.environment}"
  profile_name        = azurerm_cdn_profile.web_app_cdn.name
  location            = azurerm_resource_group.web_app_rg.location
  resource_group_name = azurerm_resource_group.web_app_rg.name
  is_http_allowed = true
  is_https_allowed = true

  origin_host_header = azurerm_storage_account.web_app_st.primary_web_host

  origin {
    name      = "staticwebapp"
    host_name = azurerm_storage_account.web_app_st.primary_web_host
  }
}

resource "azurerm_log_analytics_workspace" "web_app_log_works" {
  name                = "${var.project_name}-log-workspace-${var.environment}"
  location            = azurerm_resource_group.web_app_rg.location
  resource_group_name = azurerm_resource_group.web_app_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_monitor_diagnostic_setting" "web_app_diagnostic" {
  name               = "${var.project_name}-diagnostic-${var.environment}"
  target_resource_id = azurerm_storage_account.web_app_st.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.web_app_log_works.id

  metric {
    category = "Transaction"
  }

  metric {
    category = "Capacity"
  }
}