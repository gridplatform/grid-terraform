variable "name" {
  type        = string
  description = "Base name for resolver endpoints"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security groups for resolver endpoints"
}

variable "create_inbound_endpoint" {
  type    = bool
  default = true
}

variable "create_outbound_endpoint" {
  type    = bool
  default = true
}

variable "inbound_name" {
  type    = string
  default = null
}

variable "outbound_name" {
  type    = string
  default = null
}

variable "inbound_ip_addresses" {
  type = list(object({
    subnet_id = string
    ip        = optional(string)
  }))
  default     = []
  description = "Subnets (and optional IPs) for inbound resolver"
}

variable "outbound_ip_addresses" {
  type = list(object({
    subnet_id = string
    ip        = optional(string)
  }))
  default     = []
  description = "Subnets (and optional IPs) for outbound resolver"
}

variable "protocols" {
  type        = list(string)
  default     = null
  description = "Optional protocols (Do53, DoH, DoH-FIPS)"
}

variable "forwarding_rules" {
  type = list(object({
    name_key    = optional(string)
    name        = string
    domain_name = string
    target_ips = list(object({
      ip   = string
      port = optional(number, 53)
    }))
  }))
  default     = []
  description = "Outbound FORWARD rules (requires outbound endpoint)"
}

variable "rule_associations" {
  type = list(object({
    name_key = optional(string)
    rule_key = string
    vpc_id   = string
    name     = optional(string)
  }))
  default     = []
  description = "Associate forwarding rules to VPCs (rule_key matches forwarding_rules name_key/name)"
}

variable "tags" {
  type    = map(string)
  default = {}
}
