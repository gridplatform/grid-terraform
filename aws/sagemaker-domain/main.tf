/**
 * SageMaker Studio Domain — managed ML IDE / unified Studio entrypoint.
 */

resource "aws_sagemaker_domain" "this" {
  domain_name             = var.domain_name
  auth_mode               = var.auth_mode
  vpc_id                  = var.vpc_id
  subnet_ids              = var.subnet_ids
  kms_key_id              = var.kms_key_id
  app_network_access_type = var.app_network_access_type
  tags                    = var.tags

  default_user_settings {
    execution_role  = var.execution_role_arn
    security_groups = var.security_group_ids

    dynamic "sharing_settings" {
      for_each = var.sharing_settings != null ? [var.sharing_settings] : []
      content {
        notebook_output_option = sharing_settings.value.notebook_output_option
        s3_output_path         = sharing_settings.value.s3_output_path
        s3_kms_key_id          = try(sharing_settings.value.s3_kms_key_id, null)
      }
    }
  }
}

resource "aws_sagemaker_user_profile" "this" {
  for_each = var.user_profiles

  domain_id         = aws_sagemaker_domain.this.id
  user_profile_name = each.key
  tags              = var.tags

  user_settings {
    execution_role  = coalesce(each.value.execution_role_arn, var.execution_role_arn)
    security_groups = coalesce(each.value.security_group_ids, var.security_group_ids)
  }
}
