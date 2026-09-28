variable "service_name" {
  type        = string
  description = "AWS AI API product name (e.g. comprehend, rekognition, textract)"
}

variable "description" {
  type    = string
  default = "API-only AI service — provision IAM in root; invoke via SDK/API."
}

variable "region" {
  type    = string
  default = null
}
