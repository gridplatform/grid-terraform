variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "application_insights_id" {
  type = string
}

variable "key_vault_id" {
  type = string
}

variable "storage_account_id" {
  type = string
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "create_compute_cluster" {
  type    = bool
  default = false
}

variable "compute_cluster_name" {
  type    = string
  default = "cpu-cluster"
}

variable "compute_vm_size" {
  type    = string
  default = "STANDARD_DS3_V2"
}

variable "compute_vm_priority" {
  type    = string
  default = "Dedicated"
}

variable "compute_min_nodes" {
  type    = number
  default = 0
}

variable "compute_max_nodes" {
  type    = number
  default = 2
}

variable "compute_idle_duration" {
  type    = string
  default = "PT30M"
}

variable "tags" {
  type    = map(string)
  default = {}
}
