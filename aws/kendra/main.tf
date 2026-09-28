/**
 * Amazon Kendra index (enterprise search).
 */

resource "aws_kendra_index" "this" {
  name        = var.name
  description = var.description
  edition     = var.edition
  role_arn    = var.role_arn
  tags        = var.tags

  dynamic "user_group_resolution_configuration" {
    for_each = var.user_group_resolution_mode != null ? [1] : []
    content {
      user_group_resolution_mode = var.user_group_resolution_mode
    }
  }

  server_side_encryption_configuration {
    kms_key_id = var.kms_key_id
  }
}
