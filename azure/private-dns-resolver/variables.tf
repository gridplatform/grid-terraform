variable "name" {
  type        = string
  description = "Private DNS Resolver name"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network_id" {
  type        = string
  description = "VNet that hosts the resolver"
}

variable "inbound_endpoints" {
  type = list(object({
    name_key                     = optional(string)
    name                         = string
    subnet_id                    = string
    private_ip_allocation_method = optional(string, "Dynamic")
    private_ip_address           = optional(string)
  }))
  default = []
}

variable "outbound_endpoints" {
  type = list(object({
    name_key  = optional(string)
    name      = string
    subnet_id = string
  }))
  default = []
}

variable "forwarding_ruleset_name" {
  type    = string
  default = null
}

variable "forwarding_rules" {
  type = list(object({
    name_key    = optional(string)
    name        = string
    domain_name = string
    enabled     = optional(bool, true)
    target_dns_servers = list(object({
      ip_address = string
      port       = optional(number, 53)
    }))
  }))
  default = []
}

variable "ruleset_vnet_links" {
  type = list(object({
    name_key           = optional(string)
    name               = string
    virtual_network_id = string
  }))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
