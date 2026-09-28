/**
 * Cloud Monitoring alert policy — log-based match condition.
 * One product: google_monitoring_alert_policy.
 * Log-based match conditions for google_monitoring_alert_policy.
 */

resource "google_monitoring_alert_policy" "this" {
  project      = var.project_id
  display_name = var.display_name
  combiner     = var.combiner
  enabled      = var.enabled
  severity     = var.severity != "" ? var.severity : null
  user_labels  = var.labels

  documentation {
    mime_type = "text/markdown"
    content   = var.documentation
    subject   = var.documentation_subject != "" ? var.documentation_subject : null
  }

  conditions {
    display_name = var.condition_display_name
    condition_matched_log {
      filter           = var.filter
      label_extractors = var.label_extractors
    }
  }

  alert_strategy {
    auto_close = var.auto_close
    notification_rate_limit {
      period = var.notification_rate_limit_period
    }
  }

  notification_channels = var.notification_channels
}
