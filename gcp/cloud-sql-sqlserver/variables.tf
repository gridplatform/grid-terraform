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
  default     = "SQLSERVER_2022_STANDARD"
  description = "SQL Server version (e.g. SQLSERVER_2019_STANDARD, SQLSERVER_2022_ENTERPRISE)"

  validation {
    condition     = startswith(var.database_version, "SQLSERVER_")
    error_message = "cloud-sql-sqlserver only supports SQLSERVER_* versions. Use gcp/cloud-sql-mysql or gcp/cloud-sql-postgres for other engines."
  }
}

variable "root_password" {
  type        = string
  sensitive   = true
  description = "SQL Server sa password (required by Cloud SQL for SQL Server)"
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
  type    = number
  default = 100
}

variable "disk_type" {
  type    = string
  default = "PD_SSD"
}

variable "disk_autoresize" {
  type    = bool
  default = true
}

variable "disk_autoresize_limit" {
  type    = number
  default = 500
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "private_network" {
  type        = string
  default     = null
  description = "VPC self_link for private IP (requires PSA)"
}

variable "assign_public_ip" {
  type    = bool
  default = false
}

variable "ssl_mode" {
  type    = string
  default = "ENCRYPTED_ONLY"
}

variable "enable_private_path_for_google_cloud_services" {
  type    = bool
  default = false
}

variable "allocated_ip_range" {
  type    = string
  default = null
}

variable "collation" {
  type        = string
  default     = null
  description = "SQL Server collation (e.g. SQL_Latin1_General_CP1_CI_AS)"
}

variable "time_zone" {
  type        = string
  default     = null
  description = "SQL Server time zone"
}

variable "zone" {
  type    = string
  default = null
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

variable "database_flags" {
  type    = map(string)
  default = {}
}

variable "labels" {
  type    = map(string)
  default = {}
}
