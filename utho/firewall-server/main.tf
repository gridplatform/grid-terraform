/**
 * Utho Cloud — firewall-server
 *
 * Provisions Firewall Server via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "firewall-server"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
