variable "zone_name" {
  type        = string
  description = "Public DNS zone name (e.g. example.com)"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the DNS zone"
}

variable "a_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default     = []
  description = "A records"
}

variable "aaaa_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default     = []
  description = "AAAA records"
}

variable "cname_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    record   = string
  }))
  default     = []
  description = "CNAME records"
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
  default     = []
  description = "MX records"
}

variable "txt_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default     = []
  description = "TXT records"
}

variable "ns_records" {
  type = list(object({
    name_key = optional(string)
    name     = string
    ttl      = optional(number, 300)
    records  = list(string)
  }))
  default     = []
  description = "NS records (delegation)"
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
  default     = []
  description = "SRV records"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}
