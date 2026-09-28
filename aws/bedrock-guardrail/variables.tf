variable "name" {
  type = string
}

variable "blocked_input_messaging" {
  type    = string
  default = "Sorry, the model cannot answer this request."
}

variable "blocked_outputs_messaging" {
  type    = string
  default = "Sorry, the model cannot answer this request."
}

variable "description" {
  type    = string
  default = null
}

variable "kms_key_arn" {
  type    = string
  default = null
}

variable "content_filters" {
  type = list(object({
    type            = string
    input_strength  = string
    output_strength = string
  }))
  default = [
    { type = "HATE", input_strength = "HIGH", output_strength = "HIGH" },
    { type = "VIOLENCE", input_strength = "HIGH", output_strength = "HIGH" },
    { type = "SEXUAL", input_strength = "HIGH", output_strength = "HIGH" },
    { type = "INSULTS", input_strength = "HIGH", output_strength = "HIGH" },
    { type = "MISCONDUCT", input_strength = "HIGH", output_strength = "HIGH" },
  ]
}

variable "denied_topics" {
  type = list(object({
    name       = string
    definition = string
    examples   = optional(list(string))
  }))
  default = []
}

variable "blocked_words" {
  type    = list(string)
  default = []
}

variable "managed_word_lists" {
  type    = list(string)
  default = ["PROFANITY"]
}

variable "pii_entities" {
  type = list(object({
    type   = string
    action = string
  }))
  default = []
}

variable "publish_version" {
  type    = bool
  default = true
}

variable "version_description" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
