variable "name" {
  type = string
}

variable "role_arn" {
  type        = string
  description = "IAM role ARN for Lex V2 bot"
}

variable "description" {
  type    = string
  default = null
}

variable "idle_session_ttl_in_seconds" {
  type    = number
  default = 300
}

variable "bot_type" {
  type    = string
  default = "Bot"
}

variable "child_directed" {
  type    = bool
  default = false
}

variable "locales" {
  type    = list(string)
  default = ["en_US"]
}

variable "nlu_confidence_threshold" {
  type    = number
  default = 0.4
}

variable "tags" {
  type    = map(string)
  default = {}
}
