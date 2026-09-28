/**
 * AWS Route 53 DNSSEC for a hosted zone (KMS key signing key + enablement).
 */

resource "aws_route53_key_signing_key" "this" {
  hosted_zone_id             = var.zone_id
  key_management_service_arn = var.kms_key_arn
  name                       = var.key_name
  status                     = var.key_status
}

resource "aws_route53_hosted_zone_dnssec" "this" {
  hosted_zone_id = var.zone_id
  depends_on     = [aws_route53_key_signing_key.this]
}
