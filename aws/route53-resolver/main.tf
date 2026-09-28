/**
 * AWS Route 53 Resolver — inbound/outbound endpoints + forwarding rules.
 * Hybrid / multi-VPC DNS configuration (on-prem ↔ AWS, VPC ↔ VPC).
 */

resource "aws_route53_resolver_endpoint" "inbound" {
  count = var.create_inbound_endpoint ? 1 : 0

  name               = coalesce(var.inbound_name, "${var.name}-inbound")
  direction          = "INBOUND"
  security_group_ids = var.security_group_ids

  dynamic "ip_address" {
    for_each = var.inbound_ip_addresses
    content {
      subnet_id = ip_address.value.subnet_id
      ip        = ip_address.value.ip
    }
  }

  protocols = var.protocols
  tags      = var.tags
}

resource "aws_route53_resolver_endpoint" "outbound" {
  count = var.create_outbound_endpoint ? 1 : 0

  name               = coalesce(var.outbound_name, "${var.name}-outbound")
  direction          = "OUTBOUND"
  security_group_ids = var.security_group_ids

  dynamic "ip_address" {
    for_each = var.outbound_ip_addresses
    content {
      subnet_id = ip_address.value.subnet_id
      ip        = ip_address.value.ip
    }
  }

  protocols = var.protocols
  tags      = var.tags
}

resource "aws_route53_resolver_rule" "forward" {
  for_each = {
    for r in var.forwarding_rules : coalesce(r.name_key, r.name) => r
  }

  domain_name          = each.value.domain_name
  name                 = each.value.name
  rule_type            = "FORWARD"
  resolver_endpoint_id = aws_route53_resolver_endpoint.outbound[0].id

  dynamic "target_ip" {
    for_each = each.value.target_ips
    content {
      ip   = target_ip.value.ip
      port = target_ip.value.port
    }
  }

  tags = var.tags
}

resource "aws_route53_resolver_rule_association" "this" {
  for_each = {
    for a in var.rule_associations : coalesce(a.name_key, "${a.rule_key}-${a.vpc_id}") => a
  }

  resolver_rule_id = aws_route53_resolver_rule.forward[each.value.rule_key].id
  vpc_id           = each.value.vpc_id
  name             = each.value.name
}
