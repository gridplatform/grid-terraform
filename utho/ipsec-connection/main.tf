/**
 * Utho Cloud — ipsec-connection
 *
 * Provisions Ipsec Connection via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ipsec-connection"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
