variable "project_id" {
  type        = string
  description = "Project ID"
}

variable "network" {
  type        = string
  description = "VPC network name (from gcp/network fabric unit)"
}

variable "ingress_rules" {
  type = list(object({
    name                    = string
    description             = optional(string)
    priority                = optional(number)
    disabled                = optional(bool, false)
    source_ranges           = optional(list(string), [])
    source_tags             = optional(list(string))
    source_service_accounts = optional(list(string))
    target_tags             = optional(list(string))
    target_service_accounts = optional(list(string))
    log_config = optional(object({
      metadata = string
      filter   = optional(string)
    }))
    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
  }))
  default     = []
  description = "Ingress firewall rules"
}

variable "egress_rules" {
  type = list(object({
    name                    = string
    description             = optional(string)
    priority                = optional(number)
    disabled                = optional(bool, false)
    destination_ranges      = optional(list(string), [])
    target_tags             = optional(list(string))
    target_service_accounts = optional(list(string))
    log_config = optional(object({
      metadata = string
      filter   = optional(string)
    }))
    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
  }))
  default     = []
  description = "Egress firewall rules"
}
