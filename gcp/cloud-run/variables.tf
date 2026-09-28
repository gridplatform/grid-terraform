variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "name" {
  type        = string
  description = "Service name"
}

variable "region" {
  type        = string
  description = "Region (e.g. us-central1)"
}

variable "image" {
  type        = string
  description = "Container image URL (e.g. us-docker.pkg.dev/PROJECT/REPO/IMAGE:TAG)"
}

variable "description" {
  type        = string
  default     = ""
  description = "Service description"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels"
}

variable "deletion_protection" {
  type        = bool
  default     = false
  description = "Enable deletion protection"
}

variable "min_instances" {
  type        = number
  default     = 0
  description = "Minimum number of instances"
}

variable "max_instances" {
  type        = number
  default     = 10
  description = "Maximum number of instances"
}

variable "env" {
  type        = map(string)
  default     = {}
  description = "Environment variables"
}

variable "cpu_limit" {
  type        = string
  default     = "1"
  description = "CPU limit (e.g. 1, 2)"
}

variable "memory_limit" {
  type        = string
  default     = "512Mi"
  description = "Memory limit (e.g. 512Mi, 1Gi)"
}

variable "vpc_connector" {
  type        = string
  default     = null
  description = "Serverless VPC Access connector ID (from gcp/vpc-access-connector)"
}

variable "vpc_egress" {
  type        = string
  default     = "PRIVATE_RANGES_ONLY"
  description = "VPC egress when connector is set: PRIVATE_RANGES_ONLY or ALL_TRAFFIC"
}
