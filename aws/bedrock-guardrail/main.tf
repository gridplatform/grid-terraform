/**
 * Amazon Bedrock Guardrail — content filters for GenAI apps.
 */

resource "aws_bedrock_guardrail" "this" {
  name                      = var.name
  blocked_input_messaging   = var.blocked_input_messaging
  blocked_outputs_messaging = var.blocked_outputs_messaging
  description               = var.description
  kms_key_arn               = var.kms_key_arn
  tags                      = var.tags

  dynamic "content_policy_config" {
    for_each = length(var.content_filters) > 0 ? [1] : []
    content {
      dynamic "filters_config" {
        for_each = var.content_filters
        content {
          type            = filters_config.value.type
          input_strength  = filters_config.value.input_strength
          output_strength = filters_config.value.output_strength
        }
      }
    }
  }

  dynamic "topic_policy_config" {
    for_each = length(var.denied_topics) > 0 ? [1] : []
    content {
      dynamic "topics_config" {
        for_each = var.denied_topics
        content {
          name       = topics_config.value.name
          definition = topics_config.value.definition
          examples   = try(topics_config.value.examples, null)
          type       = "DENY"
        }
      }
    }
  }

  dynamic "word_policy_config" {
    for_each = length(var.blocked_words) > 0 || length(var.managed_word_lists) > 0 ? [1] : []
    content {
      dynamic "words_config" {
        for_each = var.blocked_words
        content {
          text = words_config.value
        }
      }
      dynamic "managed_word_lists_config" {
        for_each = var.managed_word_lists
        content {
          type = managed_word_lists_config.value
        }
      }
    }
  }

  dynamic "sensitive_information_policy_config" {
    for_each = length(var.pii_entities) > 0 ? [1] : []
    content {
      dynamic "pii_entities_config" {
        for_each = var.pii_entities
        content {
          type   = pii_entities_config.value.type
          action = pii_entities_config.value.action
        }
      }
    }
  }
}

resource "aws_bedrock_guardrail_version" "this" {
  count         = var.publish_version ? 1 : 0
  guardrail_arn = aws_bedrock_guardrail.this.guardrail_arn
  description   = var.version_description
}
