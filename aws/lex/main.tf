/**
 * Amazon Lex V2 bot (+ optional locale / alias scaffolding via variables).
 */

resource "aws_lexv2models_bot" "this" {
  name                        = var.name
  description                 = var.description
  idle_session_ttl_in_seconds = var.idle_session_ttl_in_seconds
  role_arn                    = var.role_arn
  type                        = var.bot_type

  data_privacy {
    child_directed = var.child_directed
  }

  tags = var.tags
}

resource "aws_lexv2models_bot_locale" "this" {
  for_each = toset(var.locales)

  bot_id                           = aws_lexv2models_bot.this.id
  bot_version                      = "DRAFT"
  locale_id                        = each.value
  n_lu_intent_confidence_threshold = var.nlu_confidence_threshold
  description                      = "Locale ${each.value}"
}
