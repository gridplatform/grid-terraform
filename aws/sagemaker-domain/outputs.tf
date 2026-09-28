output "domain_id" {
  value = aws_sagemaker_domain.this.id
}

output "domain_arn" {
  value = aws_sagemaker_domain.this.arn
}

output "domain_url" {
  value = aws_sagemaker_domain.this.url
}

output "home_efs_file_system_id" {
  value = aws_sagemaker_domain.this.home_efs_file_system_id
}

output "user_profile_arns" {
  value = { for k, v in aws_sagemaker_user_profile.this : k => v.arn }
}
