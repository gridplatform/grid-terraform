/**
 * Utho Cloud — cloud-public-ip
 *
 * Provisions Cloud Public Ip via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "cloud-public-ip"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
