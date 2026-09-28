variable "name" {
  type        = string
  description = "Resource name for App Service"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}
