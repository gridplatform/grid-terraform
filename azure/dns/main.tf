/**
 * Azure DNS — public DNS zone + record sets.
 */

resource "azurerm_dns_zone" "this" {
  name                = var.zone_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_dns_a_record" "a" {
  for_each = {
    for r in var.a_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_dns_aaaa_record" "aaaa" {
  for_each = {
    for r in var.aaaa_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_dns_cname_record" "cname" {
  for_each = {
    for r in var.cname_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  record              = each.value.record
  tags                = var.tags
}

resource "azurerm_dns_mx_record" "mx" {
  for_each = {
    for r in var.mx_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  tags                = var.tags

  dynamic "record" {
    for_each = each.value.records
    content {
      preference = record.value.preference
      exchange   = record.value.exchange
    }
  }
}

resource "azurerm_dns_txt_record" "txt" {
  for_each = {
    for r in var.txt_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  tags                = var.tags

  dynamic "record" {
    for_each = each.value.records
    content {
      value = record.value
    }
  }
}

resource "azurerm_dns_ns_record" "ns" {
  for_each = {
    for r in var.ns_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_dns_srv_record" "srv" {
  for_each = {
    for r in var.srv_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  tags                = var.tags

  dynamic "record" {
    for_each = each.value.records
    content {
      priority = record.value.priority
      weight   = record.value.weight
      port     = record.value.port
      target   = record.value.target
    }
  }
}
