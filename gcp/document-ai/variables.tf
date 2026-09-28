variable "project_id" {
  type = string
}

variable "location" {
  type        = string
  default     = "us"
  description = "Document AI location (us or eu)"
}

variable "display_name" {
  type = string
}

variable "processor_type" {
  type        = string
  description = "e.g. OCR_PROCESSOR, FORM_PARSER_PROCESSOR, INVOICE_PROCESSOR"
  default     = "OCR_PROCESSOR"
}
