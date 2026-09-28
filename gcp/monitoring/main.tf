/**
 * Google Cloud — monitoring
 *
 * Cloud Monitoring notification channel and optional uptime check.
 */

resource "google_monitoring_notification_channel" "this" {
  count = var.create_notification_channel ? 1 : 0

  project      = var.project_id
  display_name = var.notification_channel_display_name
  type         = var.notification_channel_type
  labels       = var.notification_channel_labels
  user_labels  = var.labels
}

resource "google_monitoring_uptime_check_config" "this" {
  count = var.create_uptime_check ? 1 : 0

  project      = var.project_id
  display_name = var.uptime_check_display_name
  timeout      = var.uptime_check_timeout
  period       = var.uptime_check_period

  monitored_resource {
    type = "uptime_url"
    labels = {
      project_id = var.project_id
      host       = var.uptime_host
    }
  }

  http_check {
    path           = var.uptime_http_path
    port           = var.uptime_http_port
    use_ssl        = var.uptime_use_ssl
    request_method = var.uptime_request_method
  }
}
