variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "User labels"
}

variable "create_notification_channel" {
  type        = bool
  default     = true
  description = "Create a notification channel"
}

variable "notification_channel_display_name" {
  type        = string
  default     = "grid-alerts"
  description = "Notification channel display name"
}

variable "notification_channel_type" {
  type        = string
  default     = "email"
  description = "Channel type (email, slack, pagerduty, webhook_tokenauth, etc.)"
}

variable "notification_channel_labels" {
  type        = map(string)
  default     = {}
  description = "Type-specific labels (e.g. email_address for email channels)"
}

variable "create_uptime_check" {
  type        = bool
  default     = false
  description = "Create an HTTP uptime check"
}

variable "uptime_check_display_name" {
  type        = string
  default     = "grid-uptime"
  description = "Uptime check display name"
}

variable "uptime_host" {
  type        = string
  default     = null
  description = "Host to probe (required when create_uptime_check is true)"
}

variable "uptime_http_path" {
  type        = string
  default     = "/"
  description = "HTTP path for uptime check"
}

variable "uptime_http_port" {
  type        = number
  default     = 443
  description = "HTTP port"
}

variable "uptime_use_ssl" {
  type        = bool
  default     = true
  description = "Use HTTPS"
}

variable "uptime_request_method" {
  type        = string
  default     = "GET"
  description = "HTTP method"
}

variable "uptime_check_timeout" {
  type        = string
  default     = "10s"
  description = "Probe timeout"
}

variable "uptime_check_period" {
  type        = string
  default     = "60s"
  description = "Check interval"
}
