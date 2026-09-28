variable "zone_name" {
  type        = string
  description = "Domain name for the hosted zone (e.g. example.com)"
}

variable "comment" {
  type        = string
  default     = null
  description = "Comment for the zone"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Allow destroy even if records exist"
}

variable "private_vpc_ids" {
  type        = list(string)
  default     = []
  description = "VPC IDs to associate for a private hosted zone (empty = public zone)"
}

variable "private_vpc_regions" {
  type        = map(string)
  default     = {}
  description = "Optional map of vpc_id → region for cross-region private zone associations"
}

variable "records" {
  type = list(object({
    name_key        = optional(string)
    name            = string
    type            = string
    ttl             = optional(number, 300)
    records         = optional(list(string))
    allow_overwrite = optional(bool, false)
    health_check_id = optional(string)
    set_identifier  = optional(string)
    alias = optional(object({
      name                   = string
      zone_id                = string
      evaluate_target_health = optional(bool, false)
    }))
    weighted_routing_policy = optional(object({
      weight = number
    }))
    failover_routing_policy = optional(object({
      type = string # PRIMARY | SECONDARY
    }))
    geolocation_routing_policy = optional(object({
      continent   = optional(string)
      country     = optional(string)
      subdivision = optional(string)
    }))
    latency_routing_policy = optional(object({
      region = string
    }))
  }))
  default     = []
  description = "DNS records (A/AAAA/CNAME/MX/TXT/NS/SRV/…). Use alias for ALB/CloudFront."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for the zone"
}
