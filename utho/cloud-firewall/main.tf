/**
 * Utho Cloud — cloud-firewall
 *
 * Provisions Cloud Firewall via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-firewall"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
