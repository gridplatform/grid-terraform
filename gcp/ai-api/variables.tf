variable "service_name" {
  type = string
}

variable "project_id" {
  type    = string
  default = null
}

variable "description" {
  type    = string
  default = "API-only GCP AI service — enable API + IAM in root; invoke via client libraries."
}
