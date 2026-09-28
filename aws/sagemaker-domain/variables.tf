variable "domain_name" {
  type = string
}

variable "auth_mode" {
  type        = string
  default     = "IAM"
  description = "IAM or SSO"
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "execution_role_arn" {
  type = string
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "kms_key_id" {
  type    = string
  default = null
}

variable "app_network_access_type" {
  type        = string
  default     = "PublicInternetOnly"
  description = "PublicInternetOnly or VpcOnly"
}

variable "sharing_settings" {
  type = object({
    notebook_output_option = string
    s3_output_path         = string
    s3_kms_key_id          = optional(string)
  })
  default = null
}

variable "user_profiles" {
  type = map(object({
    execution_role_arn = optional(string)
    security_group_ids = optional(list(string))
  }))
  default     = {}
  description = "Map of Studio user profile name → optional overrides"
}

variable "tags" {
  type    = map(string)
  default = {}
}
