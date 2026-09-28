variable "project_id" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type        = string
  description = "Zone (e.g. us-central1-a)"
}

variable "machine_type" {
  type    = string
  default = "n1-standard-4"
}

variable "disable_public_ip" {
  type    = bool
  default = true
}

variable "vm_image" {
  type = object({
    project = string
    family  = optional(string)
    name    = optional(string)
  })
  default = {
    project = "cloud-notebooks-managed"
    family  = "workbench-instances"
  }
}

variable "container_image" {
  type = object({
    repository = string
    tag        = optional(string)
  })
  default = null
}

variable "network" {
  type    = string
  default = null
}

variable "subnet" {
  type    = string
  default = null
}

variable "nic_type" {
  type    = string
  default = "GVNIC"
}

variable "service_account_email" {
  type    = string
  default = null
}

variable "accelerator_type" {
  type        = string
  default     = null
  description = "e.g. NVIDIA_TESLA_T4"
}

variable "accelerator_core_count" {
  type    = number
  default = 1
}

variable "boot_disk_size_gb" {
  type    = number
  default = 150
}

variable "boot_disk_type" {
  type    = string
  default = "PD_SSD"
}

variable "data_disk_size_gb" {
  type    = number
  default = null
}

variable "data_disk_type" {
  type    = string
  default = "PD_STANDARD"
}

variable "desired_state" {
  type    = string
  default = "ACTIVE"
}

variable "labels" {
  type    = map(string)
  default = {}
}
