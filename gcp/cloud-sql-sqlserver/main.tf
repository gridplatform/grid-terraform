/**
 * Cloud SQL for SQL Server — standalone instance.
 * One product: google_sql_database_instance (SQLSERVER_*).
 * Pass private_network from gcp/network (PSA). No cross-module calls.
 */

resource "google_sql_database_instance" "this" {
  project             = var.project_id
  name                = var.instance_name
  database_version    = var.database_version
  region              = var.region
  root_password       = var.root_password
  deletion_protection = var.deletion_protection

  settings {
    tier                        = var.tier
    edition                     = var.edition
    availability_type           = var.availability_type
    disk_size                   = var.disk_size_gb
    disk_type                   = var.disk_type
    disk_autoresize             = var.disk_autoresize
    disk_autoresize_limit       = var.disk_autoresize_limit
    user_labels                 = var.labels
    activation_policy           = "ALWAYS"
    pricing_plan                = "PER_USE"
    deletion_protection_enabled = var.deletion_protection
    collation                   = var.collation
    time_zone                   = var.time_zone

    ip_configuration {
      ipv4_enabled                                  = var.assign_public_ip
      private_network                               = var.private_network
      ssl_mode                                      = var.ssl_mode
      enable_private_path_for_google_cloud_services = var.enable_private_path_for_google_cloud_services
      allocated_ip_range                            = var.allocated_ip_range
    }

    backup_configuration {
      enabled                        = var.backup_enabled
      start_time                     = var.backup_start_time
      point_in_time_recovery_enabled = var.point_in_time_recovery_enabled
      transaction_log_retention_days = var.transaction_log_retention_days

      backup_retention_settings {
        retained_backups = var.backup_retained_count
        retention_unit   = "COUNT"
      }
    }

    maintenance_window {
      day          = var.maintenance_day
      hour         = var.maintenance_hour
      update_track = var.maintenance_update_track
    }

    dynamic "location_preference" {
      for_each = var.zone == null ? [] : [var.zone]
      content {
        zone = location_preference.value
      }
    }

    dynamic "database_flags" {
      for_each = var.database_flags
      content {
        name  = database_flags.key
        value = database_flags.value
      }
    }
  }

  lifecycle {
    ignore_changes = [
      settings[0].disk_size,
      settings[0].final_backup_config,
    ]
  }
}
