/**
 * Utho Cloud — firewall
 *
 * Provisions Firewall via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "firewall"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
