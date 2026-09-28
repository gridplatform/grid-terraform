output "notebook_instance_arn" {
  value = try(aws_sagemaker_notebook_instance.this[0].arn, null)
}

output "notebook_instance_name" {
  value = try(aws_sagemaker_notebook_instance.this[0].name, null)
}

output "notebook_instance_url" {
  value = try(aws_sagemaker_notebook_instance.this[0].url, null)
}

output "model_arn" {
  value = try(aws_sagemaker_model.this[0].arn, null)
}

output "model_name" {
  value = try(aws_sagemaker_model.this[0].name, null)
}

output "endpoint_arn" {
  value = try(aws_sagemaker_endpoint.this[0].arn, null)
}

output "endpoint_name" {
  value = try(aws_sagemaker_endpoint.this[0].name, null)
}

output "endpoint_config_name" {
  value = try(aws_sagemaker_endpoint_configuration.this[0].name, null)
}
