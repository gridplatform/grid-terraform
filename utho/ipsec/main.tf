/**
 * Utho Cloud — ipsec
 *
 * Provisions Ipsec via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ipsec"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
