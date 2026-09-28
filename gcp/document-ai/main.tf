/**
 * Document AI processor — OCR / form / custom document understanding.
 */

resource "google_document_ai_processor" "this" {
  project      = var.project_id
  location     = var.location
  display_name = var.display_name
  type         = var.processor_type
}
