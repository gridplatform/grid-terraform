variable "network" {
  type        = string
  description = "Self link of this VPC (from gcp/network fabric unit output network_self_link)"
}

variable "peerings" {
  type = list(object({
    name                                = string
    peer_network                        = string
    export_custom_routes                = optional(bool, false)
    import_custom_routes                = optional(bool, false)
    export_subnet_routes_with_public_ip = optional(bool, false)
    import_subnet_routes_with_public_ip = optional(bool, false)
  }))
  default     = []
  description = "VPC peerings (this VPC peers with peer_network)"
}
