variable "resource_group_name" {
  type        = string
  description = "Resource group for Monitor resources"
}

variable "action_group_name" {
  type        = string
  description = "Name of the action group"
}

variable "action_group_short_name" {
  type        = string
  description = "Short name for the action group (max 12 characters)"
}

variable "email_receivers" {
  type = list(object({
    name                    = string
    email_address           = string
    use_common_alert_schema = optional(bool, true)
  }))
  default     = []
  description = "Email notification receivers"
}

variable "webhook_receivers" {
  type = list(object({
    name                    = string
    service_uri             = string
    use_common_alert_schema = optional(bool, true)
  }))
  default     = []
  description = "Webhook notification receivers"
}

variable "create_metric_alert" {
  type        = bool
  default     = true
  description = "Create a metric alert rule"
}

variable "alert_name" {
  type        = string
  default     = null
  description = "Metric alert name (required when create_metric_alert is true)"
}

variable "scopes" {
  type        = list(string)
  default     = []
  description = "Resource IDs to monitor"
}

variable "alert_description" {
  type        = string
  default     = null
  description = "Metric alert description"
}

variable "severity" {
  type        = number
  default     = 3
  description = "Alert severity (0–4)"
}

variable "frequency" {
  type        = string
  default     = "PT1M"
  description = "Evaluation frequency (ISO 8601 duration)"
}

variable "window_size" {
  type        = string
  default     = "PT5M"
  description = "Time window for aggregation (ISO 8601 duration)"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Whether the metric alert is enabled"
}

variable "criteria" {
  type = object({
    metric_namespace = string
    metric_name      = string
    aggregation      = string
    operator         = string
    threshold        = number
    dimensions = optional(list(object({
      name     = string
      operator = string
      values   = list(string)
    })), [])
  })
  default = {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }
  description = "Metric alert criteria"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}
