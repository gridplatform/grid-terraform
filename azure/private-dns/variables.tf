variable "zone_name" {
  type        = string
  description = "Private DNS zone name (e.g. internal.example.com)"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the private DNS zone"
}

variable "vnet_links" {
  type = list(object({
    name_key             = optional(string)
    name                 = string
    virtual_network_id   = string
    registration_enabled = optional(bool, false)
  }))
  default     = []
  description = "VNets that can resolve this private zone"
}

variable "a_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default = []
}

variable "aaaa_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default = []
}

variable "cname_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    record   = string
  }))
  default = []
}

variable "mx_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records = list(object({
      preference = number
      exchange   = string
    }))
  }))
  default = []
}

variable "txt_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default = []
}

variable "srv_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records = list(object({
      priority = number
      weight   = number
      port     = number
      target   = string
    }))
  }))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
