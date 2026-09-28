variable "zone_id" {
  type        = string
  description = "Route 53 hosted zone ID"
}

variable "kms_key_arn" {
  type        = string
  description = "CMK ARN for DNSSEC signing (must allow Route53)"
}

variable "key_name" {
  type        = string
  description = "Key-signing key name"
}

variable "key_status" {
  type        = string
  default     = "ACTIVE"
  description = "ACTIVE or INACTIVE"
}
