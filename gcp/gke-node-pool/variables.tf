variable "name" {
  type        = string
  description = "Node pool name"
}

variable "cluster_name" {
  type        = string
  description = "Existing GKE cluster name this pool attaches to"
}

variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "region" {
  type        = string
  description = "Cluster location / region"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Labels / tags"
}
