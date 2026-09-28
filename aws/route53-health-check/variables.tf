variable "type" {
  type        = string
  description = "Health check type (HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC, RECOVERY_CONTROL)"
}

variable "fqdn" {
  type        = string
  default     = null
  description = "FQDN to check (endpoint checks)"
}

variable "ip_address" {
  type        = string
  default     = null
  description = "IP to check (alternative to fqdn)"
}

variable "port" {
  type        = number
  default     = null
  description = "Port for endpoint checks"
}

variable "resource_path" {
  type        = string
  default     = null
  description = "Path for HTTP(S) checks"
}

variable "failure_threshold" {
  type    = number
  default = 3
}

variable "request_interval" {
  type    = number
  default = 30
}

variable "measure_latency" {
  type    = bool
  default = false
}

variable "regions" {
  type        = list(string)
  default     = null
  description = "Optional AWS regions for the checker"
}

variable "child_healthchecks" {
  type    = list(string)
  default = null
}

variable "child_health_threshold" {
  type    = number
  default = null
}

variable "cloudwatch_alarm_name" {
  type    = string
  default = null
}

variable "cloudwatch_alarm_region" {
  type    = string
  default = null
}

variable "insufficient_data_health_status" {
  type    = string
  default = null
}

variable "inverted" {
  type    = bool
  default = false
}

variable "disabled" {
  type    = bool
  default = false
}

variable "enable_sni" {
  type    = bool
  default = null
}

variable "search_string" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
