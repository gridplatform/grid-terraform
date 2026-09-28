variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "Cloud SQL region"
}

variable "instance_name" {
  type        = string
  description = "Cloud SQL instance name"
}

variable "database_version" {
  type        = string
  default     = "POSTGRES_17"
  description = "PostgreSQL version (e.g. POSTGRES_15, POSTGRES_17). Must be a POSTGRES_* Cloud SQL version."

  validation {
    condition     = startswith(var.database_version, "POSTGRES_")
    error_message = "cloud-sql-postgres only supports POSTGRES_* versions. Use gcp/cloud-sql-mysql or gcp/cloud-sql-sqlserver for other engines."
  }
}

variable "tier" {
  type        = string
  description = "Machine tier (e.g. db-custom-2-7680)"
}

variable "edition" {
  type        = string
  default     = "ENTERPRISE"
  description = "ENTERPRISE or ENTERPRISE_PLUS"
}

variable "availability_type" {
  type        = string
  default     = "ZONAL"
  description = "ZONAL or REGIONAL"
}

variable "disk_size_gb" {
  type        = number
  default     = 20
  description = "Initial disk size (GB). Autoresize growth is ignored after create."
}

variable "disk_type" {
  type        = string
  default     = "PD_SSD"
  description = "PD_SSD or PD_HDD"
}

variable "disk_autoresize" {
  type    = bool
  default = true
}

variable "disk_autoresize_limit" {
  type    = number
  default = 200
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "private_network" {
  type        = string
  default     = null
  description = "VPC self_link for private IP (requires PSA on the network)"
}

variable "assign_public_ip" {
  type        = bool
  default     = false
  description = "Enable public IPv4"
}

variable "ssl_mode" {
  type        = string
  default     = "ENCRYPTED_ONLY"
  description = "SSL mode for connections"
}

variable "enable_private_path_for_google_cloud_services" {
  type    = bool
  default = false
}

variable "allocated_ip_range" {
  type        = string
  default     = null
  description = "Named allocated IP range for private services access"
}

variable "zone" {
  type        = string
  default     = null
  description = "Preferred zone (location_preference.zone)"
}

variable "maintenance_day" {
  type    = number
  default = 7
}

variable "maintenance_hour" {
  type    = number
  default = 2
}

variable "maintenance_update_track" {
  type    = string
  default = "stable"
}

variable "backup_enabled" {
  type    = bool
  default = true
}

variable "backup_start_time" {
  type    = string
  default = "21:00"
}

variable "backup_retained_count" {
  type    = number
  default = 7
}

variable "point_in_time_recovery_enabled" {
  type    = bool
  default = true
}

variable "transaction_log_retention_days" {
  type    = number
  default = 7
}

variable "query_insights_enabled" {
  type    = bool
  default = true
}

variable "query_string_length" {
  type    = number
  default = 1024
}

variable "query_plans_per_minute" {
  type    = number
  default = 5
}

variable "record_application_tags" {
  type    = bool
  default = true
}

variable "record_client_address" {
  type    = bool
  default = true
}

variable "psc_enabled" {
  type        = bool
  default     = false
  description = "Enable Private Service Connect on the instance"
}

variable "allowed_psc_projects" {
  type        = list(string)
  default     = []
  description = "Consumer projects allowed for PSC endpoints"
}

variable "password_validation_enabled" {
  type    = bool
  default = true
}

variable "password_min_length" {
  type    = number
  default = 12
}

variable "database_flags" {
  type        = map(string)
  default     = {}
  description = "Cloud SQL database flags"
}

variable "labels" {
  type    = map(string)
  default = {}
}
