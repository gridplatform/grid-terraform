/**
 * Microsoft Azure — monitor
 *
 * Action group and metric alert for Azure Monitor.
 */

resource "azurerm_monitor_action_group" "this" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = var.action_group_short_name
  tags                = var.tags

  dynamic "email_receiver" {
    for_each = var.email_receivers
    content {
      name                    = email_receiver.value.name
      email_address           = email_receiver.value.email_address
      use_common_alert_schema = lookup(email_receiver.value, "use_common_alert_schema", true)
    }
  }

  dynamic "webhook_receiver" {
    for_each = var.webhook_receivers
    content {
      name                    = webhook_receiver.value.name
      service_uri             = webhook_receiver.value.service_uri
      use_common_alert_schema = lookup(webhook_receiver.value, "use_common_alert_schema", true)
    }
  }
}

resource "azurerm_monitor_metric_alert" "this" {
  count = var.create_metric_alert ? 1 : 0

  name                = var.alert_name
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  description         = var.alert_description
  severity            = var.severity
  frequency           = var.frequency
  window_size         = var.window_size
  enabled             = var.enabled
  tags                = var.tags

  criteria {
    metric_namespace = var.criteria.metric_namespace
    metric_name      = var.criteria.metric_name
    aggregation      = var.criteria.aggregation
    operator         = var.criteria.operator
    threshold        = var.criteria.threshold

    dynamic "dimension" {
      for_each = lookup(var.criteria, "dimensions", [])
      content {
        name     = dimension.value.name
        operator = dimension.value.operator
        values   = dimension.value.values
      }
    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.this.id
  }
}
