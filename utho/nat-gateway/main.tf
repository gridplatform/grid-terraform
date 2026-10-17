/**
 * Utho Cloud — nat-gateway
 *
 * Provisions Nat Gateway via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "nat-gateway"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
