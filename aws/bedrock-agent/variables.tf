variable "agent_name" {
  type = string
}

variable "agent_resource_role_arn" {
  type        = string
  description = "IAM role ARN assumed by the Bedrock agent"
}

variable "foundation_model" {
  type        = string
  description = "Foundation model ID (e.g. anthropic.claude-3-5-sonnet-20241022-v2:0)"
}

variable "instruction" {
  type        = string
  description = "System instruction for the agent"
}

variable "description" {
  type    = string
  default = null
}

variable "idle_session_ttl_in_seconds" {
  type    = number
  default = 600
}

variable "customer_encryption_key_arn" {
  type    = string
  default = null
}

variable "prepare_agent" {
  type        = bool
  default     = true
  description = "Prepare agent after create/update"
}

variable "create_alias" {
  type    = bool
  default = true
}

variable "alias_name" {
  type    = string
  default = "live"
}

variable "alias_description" {
  type    = string
  default = null
}

variable "knowledge_base_ids" {
  type        = list(string)
  default     = []
  description = "Existing Bedrock Knowledge Base IDs to associate"
}

variable "tags" {
  type    = map(string)
  default = {}
}
