variable "name" {
  type        = string
  description = "Application Insights resource name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "workspace_id" {
  type        = string
  description = "Log Analytics workspace ID (workspace-based Application Insights)"
}

variable "application_type" {
  type        = string
  default     = "web"
  description = "Application type (web, other, java, etc.)"
}

variable "retention_in_days" {
  type        = number
  default     = 90
  description = "Telemetry retention in days"
}

variable "sampling_percentage" {
  type        = number
  default     = 100
  description = "Sampling percentage (0–100)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}
