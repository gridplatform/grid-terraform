/**
 * Utho Cloud — ebs
 *
 * Provisions Ebs via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ebs"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
