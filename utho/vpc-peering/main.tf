/**
 * Utho Cloud — vpc-peering
 *
 * Provisions Vpc Peering via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "vpc-peering"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
