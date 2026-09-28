variable "name" {
  type        = string
  description = "Resource name / prefix for openstack-network"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels / tags"
}

variable "region" {
  type        = string
  default     = null
  description = "Region / location (provider-specific)"
}
