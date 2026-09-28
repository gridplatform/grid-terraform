variable "project_id" {
  type        = string
  description = "GCP project that owns the alert policy"
}

variable "display_name" {
  type        = string
  description = "Alert policy display name"
}

variable "condition_display_name" {
  type        = string
  description = "Condition display name"
  default     = "Log match"
}

variable "filter" {
  type        = string
  description = "Cloud Logging filter for the log-match condition"
}

variable "documentation" {
  type        = string
  description = "Markdown notification body"
}

variable "documentation_subject" {
  type        = string
  description = "Optional notification subject"
  default     = ""
}

variable "notification_channels" {
  type        = list(string)
  description = "Monitoring notification channel resource names"
}

variable "label_extractors" {
  type        = map(string)
  default     = {}
  description = "EXTRACT(...)/REGEXP_EXTRACT(...) map for incident labels"
}

variable "enabled" {
  type    = bool
  default = true
}

variable "combiner" {
  type    = string
  default = "OR"
}

variable "severity" {
  type        = string
  default     = ""
  description = "Optional severity (e.g. WARNING). Empty leaves unset."
}

variable "notification_rate_limit_period" {
  type        = string
  default     = "600s"
  description = "Minimum time between notifications"
}

variable "auto_close" {
  type        = string
  default     = "1800s"
  description = "Incident auto-close duration"
}

variable "labels" {
  type    = map(string)
  default = {}
}
