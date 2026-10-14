variable "project_id" {
  type        = string
  description = "Project ID"
}

variable "network" {
  type        = string
  description = "VPC network name (from gcp/network fabric unit)"
}

variable "routes" {
  type = list(object({
    name                 = string
    dest_range           = string
    next_hop_gateway     = optional(string)
    next_hop_ip          = optional(string)
    next_hop_instance    = optional(string)
    next_hop_vpc_peering = optional(string)
    next_hop_ilb         = optional(string)
    priority             = optional(number)
  }))
  default     = []
  description = "Custom VPC routes"
}
