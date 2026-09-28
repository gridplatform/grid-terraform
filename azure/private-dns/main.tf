/**
 * Azure Private DNS — private zone, VNet links, and common record types.
 */

resource "azurerm_private_dns_zone" "this" {
  name                = var.zone_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  for_each = {
    for l in var.vnet_links : coalesce(l.name_key, l.name) => l
  }

  name                  = each.value.name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.this.name
  virtual_network_id    = each.value.virtual_network_id
  registration_enabled  = each.value.registration_enabled
  tags                  = var.tags
}

resource "azurerm_private_dns_a_record" "a" {
  for_each = {
    for r in var.a_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_private_dns_aaaa_record" "aaaa" {
  for_each = {
    for r in var.aaaa_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_private_dns_cname_record" "cname" {
  for_each = {
    for r in var.cname_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  record              = each.value.record
  tags                = var.tags
}

resource "azurerm_private_dns_mx_record" "mx" {
  for_each = {
    for r in var.mx_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
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

resource "azurerm_private_dns_txt_record" "txt" {
  for_each = {
    for r in var.txt_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
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

resource "azurerm_private_dns_srv_record" "srv" {
  for_each = {
    for r in var.srv_records : coalesce(r.name_key, r.name) => r
  }

  name                = each.value.name
  zone_name           = azurerm_private_dns_zone.this.name
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
