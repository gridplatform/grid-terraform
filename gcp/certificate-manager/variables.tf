variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "domain" {
  type        = string
  description = "Apex domain for DNS authorization and managed cert (*.domain + apex)"
}

variable "dns_authorization_name" {
  type        = string
  description = "Certificate Manager DNS authorization resource name"
}

variable "certificate_name" {
  type        = string
  description = "Managed certificate name"
}

variable "cert_map_name" {
  type        = string
  description = "Certificate map name (e.g. for GKE Gateway certmap annotation)"
}

variable "map_wildcard_entry_name" {
  type        = string
  description = "Cert map entry name for *.domain"
}

variable "map_primary_entry_name" {
  type        = string
  description = "Cert map entry name with PRIMARY matcher"
}

variable "certificate_scope" {
  type        = string
  default     = "DEFAULT"
  description = "Certificate scope (DEFAULT, ALL_REGIONS, etc.)"
}

variable "extra_domains" {
  type        = list(string)
  default     = []
  description = "Additional domains on the managed certificate"
}

variable "create_global_address" {
  type        = bool
  default     = true
  description = "Create a global external IPv4 address for Gateway/LB"
}

variable "global_address_name" {
  type        = string
  default     = null
  description = "Name for the global address (required when create_global_address is true)"

  validation {
    condition     = !var.create_global_address || (var.global_address_name != null && length(var.global_address_name) > 0)
    error_message = "global_address_name is required when create_global_address is true."
  }
}

variable "cert_map_description" {
  type    = string
  default = ""
}

variable "labels" {
  type    = map(string)
  default = {}
}
