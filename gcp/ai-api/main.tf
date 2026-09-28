/**
 * Marker for GCP AI API products (Vision, Speech, Translate, NL, Video Intelligence).
 * Durable ML/GenAI: gcp/vertex-ai*, gcp/document-ai.
 */

resource "terraform_data" "api_only" {
  input = {
    service     = var.service_name
    description = var.description
    project_id  = var.project_id
  }
}
