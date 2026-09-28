/**
 * AWS Route 53 — hosted zone (public or private) + record sets.
 * One product: DNS configuration for a domain / zone.
 */

resource "aws_route53_zone" "this" {
  name          = var.zone_name
  comment       = var.comment
  force_destroy = var.force_destroy

  dynamic "vpc" {
    for_each = var.private_vpc_ids
    content {
      vpc_id     = vpc.value
      vpc_region = lookup(var.private_vpc_regions, vpc.value, null)
    }
  }

  tags = var.tags
}

resource "aws_route53_record" "this" {
  for_each = {
    for idx, r in var.records : coalesce(r.name_key, "${r.name}-${r.type}-${idx}") => r
  }

  zone_id = aws_route53_zone.this.zone_id
  name    = each.value.name == "" || each.value.name == "@" ? var.zone_name : each.value.name
  type    = each.value.type
  ttl     = each.value.alias == null ? each.value.ttl : null
  records = each.value.alias == null ? each.value.records : null

  dynamic "alias" {
    for_each = each.value.alias != null ? [each.value.alias] : []
    content {
      name                   = alias.value.name
      zone_id                = alias.value.zone_id
      evaluate_target_health = alias.value.evaluate_target_health
    }
  }

  allow_overwrite = each.value.allow_overwrite
  health_check_id = each.value.health_check_id
  set_identifier  = each.value.set_identifier

  dynamic "weighted_routing_policy" {
    for_each = each.value.weighted_routing_policy != null ? [each.value.weighted_routing_policy] : []
    content {
      weight = weighted_routing_policy.value.weight
    }
  }

  dynamic "failover_routing_policy" {
    for_each = each.value.failover_routing_policy != null ? [each.value.failover_routing_policy] : []
    content {
      type = failover_routing_policy.value.type
    }
  }

  dynamic "geolocation_routing_policy" {
    for_each = each.value.geolocation_routing_policy != null ? [each.value.geolocation_routing_policy] : []
    content {
      continent   = geolocation_routing_policy.value.continent
      country     = geolocation_routing_policy.value.country
      subdivision = geolocation_routing_policy.value.subdivision
    }
  }

  dynamic "latency_routing_policy" {
    for_each = each.value.latency_routing_policy != null ? [each.value.latency_routing_policy] : []
    content {
      region = latency_routing_policy.value.region
    }
  }
}
