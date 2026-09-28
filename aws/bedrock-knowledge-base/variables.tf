variable "name" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "embedding_model_arn" {
  type        = string
  description = "Bedrock embedding model ARN"
}

variable "storage_type" {
  type        = string
  default     = "OPENSEARCH_SERVERLESS"
  description = "OPENSEARCH_SERVERLESS | PINECONE | REDIS_ENTERPRISE_CLOUD | RDS"
}

variable "opensearch_serverless" {
  type = object({
    collection_arn    = string
    vector_index_name = string
    vector_field      = string
    text_field        = string
    metadata_field    = string
  })
  default = null
}

variable "s3_data_source" {
  type = object({
    name               = string
    bucket_arn         = string
    inclusion_prefixes = optional(list(string))
  })
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
