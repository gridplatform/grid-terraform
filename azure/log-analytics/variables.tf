variable "name" {
  type        = string
  description = "Log Analytics workspace name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "sku" {
  type        = string
  default     = "PerGB2018"
  description = "Workspace SKU"
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = "Log retention in days"
}

variable "daily_quota_gb" {
  type        = number
  default     = -1
  description = "Daily ingestion quota in GB (-1 = unlimited)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}
