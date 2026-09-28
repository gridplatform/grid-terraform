output "guardrail_arn" {
  value = aws_bedrock_guardrail.this.guardrail_arn
}

output "guardrail_id" {
  value = aws_bedrock_guardrail.this.guardrail_id
}

output "version" {
  value = try(aws_bedrock_guardrail_version.this[0].version, null)
}
