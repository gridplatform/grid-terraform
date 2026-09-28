/**
 * Marker module for AWS AI *API* products that have little/no durable Terraform surface
 * (Comprehend, Rekognition, Textract, Transcribe, Translate, Polly, etc.).
 * Real deploy = IAM + SDK usage; this keeps the Grid catalog honest.
 */

resource "terraform_data" "api_only" {
  input = {
    service     = var.service_name
    description = var.description
    region      = var.region
  }
}
