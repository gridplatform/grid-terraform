variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "sku_name" {
  type    = string
  default = "S0"
}

variable "custom_subdomain_name" {
  type    = string
  default = null
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "deployments" {
  type = list(object({
    name          = string
    model_name    = string
    model_version = string
    format        = optional(string)
    sku_name      = optional(string)
    capacity      = optional(number)
  }))
  default     = []
  description = "Azure OpenAI model deployments (e.g. gpt-4o)"
}

variable "tags" {
  type    = map(string)
  default = {}
}
