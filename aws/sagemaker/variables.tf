variable "role_arn" {
  type        = string
  description = "Default SageMaker execution role ARN (notebook / model fallback)"
}

variable "tags" {
  type    = map(string)
  default = {}
}

# ---- Notebook ----
variable "create_notebook" {
  type        = bool
  default     = true
  description = "Create a SageMaker notebook instance"
}

variable "notebook_name" {
  type    = string
  default = null
}

variable "notebook_instance_type" {
  type    = string
  default = "ml.t3.medium"
}

variable "subnet_id" {
  type    = string
  default = null
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "direct_internet_access" {
  type    = string
  default = "Enabled"
}

variable "volume_size_in_gb" {
  type    = number
  default = 20
}

variable "kms_key_id" {
  type    = string
  default = null
}

variable "lifecycle_config_name" {
  type    = string
  default = null
}

variable "default_code_repository" {
  type    = string
  default = null
}

variable "root_access" {
  type    = bool
  default = true
}

variable "platform_identifier" {
  type    = string
  default = null
}

# ---- Model ----
variable "create_model" {
  type        = bool
  default     = false
  description = "Create a SageMaker model for inference"
}

variable "model_name" {
  type    = string
  default = null
}

variable "model_execution_role_arn" {
  type    = string
  default = null
}

variable "model_image" {
  type        = string
  default     = null
  description = "Inference container image URI"
}

variable "model_data_url" {
  type        = string
  default     = null
  description = "S3 URI of model artifacts (.tar.gz)"
}

variable "model_environment" {
  type    = map(string)
  default = {}
}

variable "model_enable_network_isolation" {
  type    = bool
  default = false
}

variable "model_vpc_config" {
  type = object({
    subnets            = list(string)
    security_group_ids = list(string)
  })
  default = null
}

# ---- Endpoint ----
variable "create_endpoint" {
  type        = bool
  default     = false
  description = "Create endpoint configuration + realtime endpoint"
}

variable "endpoint_name" {
  type    = string
  default = null
}

variable "endpoint_config_name" {
  type    = string
  default = null
}

variable "endpoint_model_name" {
  type        = string
  default     = null
  description = "Existing model name when create_model = false"
}

variable "endpoint_variant_name" {
  type    = string
  default = "AllTraffic"
}

variable "endpoint_initial_instance_count" {
  type    = number
  default = 1
}

variable "endpoint_instance_type" {
  type    = string
  default = "ml.m5.large"
}

variable "endpoint_data_capture" {
  type = object({
    enable_capture              = bool
    initial_sampling_percentage = number
    destination_s3_uri          = string
    capture_mode                = string
  })
  default = null
}
