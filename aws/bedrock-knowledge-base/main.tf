/**
 * Amazon Bedrock Knowledge Base — RAG over S3 (+ OpenSearch Serverless vector store refs).
 * Vector store / data source wiring is passed in so this stays one product.
 */

resource "aws_bedrockagent_knowledge_base" "this" {
  name     = var.name
  role_arn = var.role_arn
  tags     = var.tags

  knowledge_base_configuration {
    type = "VECTOR"
    vector_knowledge_base_configuration {
      embedding_model_arn = var.embedding_model_arn
    }
  }

  storage_configuration {
    type = var.storage_type

    dynamic "opensearch_serverless_configuration" {
      for_each = var.storage_type == "OPENSEARCH_SERVERLESS" ? [var.opensearch_serverless] : []
      content {
        collection_arn    = opensearch_serverless_configuration.value.collection_arn
        vector_index_name = opensearch_serverless_configuration.value.vector_index_name
        field_mapping {
          vector_field   = opensearch_serverless_configuration.value.vector_field
          text_field     = opensearch_serverless_configuration.value.text_field
          metadata_field = opensearch_serverless_configuration.value.metadata_field
        }
      }
    }
  }
}

resource "aws_bedrockagent_data_source" "s3" {
  count = var.s3_data_source != null ? 1 : 0

  name              = var.s3_data_source.name
  knowledge_base_id = aws_bedrockagent_knowledge_base.this.id
  data_source_type  = "S3"

  data_source_configuration {
    type = "S3"
    s3_configuration {
      bucket_arn         = var.s3_data_source.bucket_arn
      inclusion_prefixes = try(var.s3_data_source.inclusion_prefixes, null)
    }
  }
}
