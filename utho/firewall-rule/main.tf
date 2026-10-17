/**
 * Utho Cloud — firewall-rule
 *
 * Provisions Firewall Rule via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "firewall-rule"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
