output "agent_id" {
  value = aws_bedrockagent_agent.this.agent_id
}

output "agent_arn" {
  value = aws_bedrockagent_agent.this.agent_arn
}

output "agent_version" {
  value = aws_bedrockagent_agent.this.agent_version
}

output "alias_id" {
  value = try(aws_bedrockagent_agent_alias.this[0].agent_alias_id, null)
}

output "alias_arn" {
  value = try(aws_bedrockagent_agent_alias.this[0].agent_alias_arn, null)
}
