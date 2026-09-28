output "key_signing_key_id" {
  value = aws_route53_key_signing_key.this.id
}

output "digest_value" {
  value = aws_route53_key_signing_key.this.digest_value
}

output "dnskey_record" {
  value = aws_route53_key_signing_key.this.dnskey_record
}

output "ds_record" {
  value = aws_route53_key_signing_key.this.ds_record
}
