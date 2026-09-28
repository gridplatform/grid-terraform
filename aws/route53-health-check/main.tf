/**
 * AWS Route 53 health check — for failover / calculated routing.
 */

resource "aws_route53_health_check" "this" {
  fqdn                            = var.fqdn
  ip_address                      = var.ip_address
  port                            = var.port
  type                            = var.type
  resource_path                   = var.resource_path
  failure_threshold               = var.failure_threshold
  request_interval                = var.request_interval
  measure_latency                 = var.measure_latency
  regions                         = var.regions
  child_healthchecks              = var.child_healthchecks
  child_health_threshold          = var.child_health_threshold
  cloudwatch_alarm_name           = var.cloudwatch_alarm_name
  cloudwatch_alarm_region         = var.cloudwatch_alarm_region
  insufficient_data_health_status = var.insufficient_data_health_status
  inverted                        = var.inverted
  disabled                        = var.disabled
  enable_sni                      = var.enable_sni
  search_string                   = var.search_string
  tags                            = var.tags
}
