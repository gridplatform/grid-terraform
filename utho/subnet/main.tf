/**
 * Utho Cloud — subnet
 *
 * Provisions Subnet via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "subnet"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
