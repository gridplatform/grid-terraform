output "bot_id" {
  value = aws_lexv2models_bot.this.id
}

output "bot_arn" {
  value = aws_lexv2models_bot.this.arn
}

output "locale_ids" {
  value = [for l in aws_lexv2models_bot_locale.this : l.locale_id]
}
