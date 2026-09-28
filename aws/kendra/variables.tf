variable "name" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "description" {
  type    = string
  default = null
}

variable "edition" {
  type        = string
  default     = "DEVELOPER_EDITION"
  description = "DEVELOPER_EDITION or ENTERPRISE_EDITION"
}

variable "kms_key_id" {
  type    = string
  default = null
}

variable "user_group_resolution_mode" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
