/**
 * SageMaker AI — notebook, model, endpoint config, and/or realtime endpoint.
 * Enable each piece with create_* flags. IAM role / VPC IDs come from the caller.
 * Only aws_sagemaker_* — no nested modules.
 */

resource "aws_sagemaker_notebook_instance" "this" {
  count = var.create_notebook ? 1 : 0

  name                    = var.notebook_name
  instance_type           = var.notebook_instance_type
  role_arn                = var.role_arn
  subnet_id               = var.subnet_id
  security_groups         = var.security_group_ids
  direct_internet_access  = var.direct_internet_access
  volume_size_in_gb       = var.volume_size_in_gb
  kms_key_id              = var.kms_key_id
  lifecycle_config_name   = var.lifecycle_config_name
  default_code_repository = var.default_code_repository
  root_access             = var.root_access ? "Enabled" : "Disabled"
  platform_identifier     = var.platform_identifier
  tags                    = var.tags
}

resource "aws_sagemaker_model" "this" {
  count = var.create_model ? 1 : 0

  name                     = var.model_name
  execution_role_arn       = coalesce(var.model_execution_role_arn, var.role_arn)
  enable_network_isolation = var.model_enable_network_isolation
  tags                     = var.tags

  primary_container {
    image          = var.model_image
    model_data_url = var.model_data_url
    environment    = var.model_environment
  }

  dynamic "vpc_config" {
    for_each = var.model_vpc_config != null ? [var.model_vpc_config] : []
    content {
      subnets            = vpc_config.value.subnets
      security_group_ids = vpc_config.value.security_group_ids
    }
  }
}

resource "aws_sagemaker_endpoint_configuration" "this" {
  count = var.create_endpoint ? 1 : 0

  name = var.endpoint_config_name
  tags = var.tags

  production_variants {
    variant_name           = var.endpoint_variant_name
    model_name             = var.create_model ? aws_sagemaker_model.this[0].name : var.endpoint_model_name
    initial_instance_count = var.endpoint_initial_instance_count
    instance_type          = var.endpoint_instance_type
    initial_variant_weight = 1.0
  }

  dynamic "data_capture_config" {
    for_each = var.endpoint_data_capture != null ? [var.endpoint_data_capture] : []
    content {
      enable_capture              = data_capture_config.value.enable_capture
      initial_sampling_percentage = data_capture_config.value.initial_sampling_percentage
      destination_s3_uri          = data_capture_config.value.destination_s3_uri
      capture_options {
        capture_mode = data_capture_config.value.capture_mode
      }
    }
  }
}

resource "aws_sagemaker_endpoint" "this" {
  count = var.create_endpoint ? 1 : 0

  name                 = var.endpoint_name
  endpoint_config_name = aws_sagemaker_endpoint_configuration.this[0].name
  tags                 = var.tags
}
