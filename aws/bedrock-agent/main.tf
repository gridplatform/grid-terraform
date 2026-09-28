/**
 * Amazon Bedrock Agent — GenAI agent with foundation model + optional alias.
 */

resource "aws_bedrockagent_agent" "this" {
  agent_name                  = var.agent_name
  agent_resource_role_arn     = var.agent_resource_role_arn
  foundation_model            = var.foundation_model
  instruction                 = var.instruction
  description                 = var.description
  idle_session_ttl_in_seconds = var.idle_session_ttl_in_seconds
  customer_encryption_key_arn = var.customer_encryption_key_arn
  prepare_agent               = var.prepare_agent
  tags                        = var.tags
}

resource "aws_bedrockagent_agent_alias" "this" {
  count = var.create_alias ? 1 : 0

  agent_alias_name = var.alias_name
  agent_id         = aws_bedrockagent_agent.this.agent_id
  description      = var.alias_description
  tags             = var.tags
}

resource "aws_bedrockagent_agent_knowledge_base_association" "this" {
  for_each = toset(var.knowledge_base_ids)

  agent_id             = aws_bedrockagent_agent.this.agent_id
  description          = "KB association ${each.value}"
  knowledge_base_id    = each.value
  knowledge_base_state = "ENABLED"
}
