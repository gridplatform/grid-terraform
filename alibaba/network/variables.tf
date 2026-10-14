variable "name" {
  type        = string
  description = "Resource name / prefix for network"
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

variable "subnets" {
  type = list(object({
    name        = string
    cidr        = string
    region      = optional(string)
    description = optional(string)
  }))
  default     = []
  description = "Fabric subnets (Unit A); folded from catalog type subnet"
}
