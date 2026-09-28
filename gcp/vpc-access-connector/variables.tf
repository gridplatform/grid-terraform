variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "name" {
  type        = string
  description = "Connector name"
}

variable "region" {
  type        = string
  description = "Connector region"
}

variable "network" {
  type        = string
  default     = null
  description = "VPC network name (omit when using subnet)"
}

variable "ip_cidr_range" {
  type        = string
  default     = null
  description = "CIDR for the connector when using network mode (e.g. 10.8.0.0/28)"
}

variable "subnet_name" {
  type        = string
  default     = null
  description = "Existing subnet name (preferred over network + ip_cidr_range)"
}

variable "subnet_project_id" {
  type        = string
  default     = null
  description = "Project hosting the subnet (defaults to project_id)"
}

variable "min_instances" {
  type    = number
  default = 2
}

variable "max_instances" {
  type    = number
  default = 3
}

variable "machine_type" {
  type        = string
  default     = "e2-micro"
  description = "Connector machine type"
}
