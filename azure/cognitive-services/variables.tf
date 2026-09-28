variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "kind" {
  type        = string
  description = "Account kind: SpeechServices, ComputerVision, TextAnalytics, FormRecognizer, ContentSafety, CognitiveServices (multi), etc."
}

variable "sku_name" {
  type    = string
  default = "S0"
}

variable "custom_subdomain_name" {
  type    = string
  default = null
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
