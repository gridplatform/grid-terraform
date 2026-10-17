/**
 * Utho Cloud — vpc
 *
 * Provisions Vpc via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "vpc"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
