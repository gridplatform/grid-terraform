/**
 * Amazon Web Services — q-business
 *
 * Provisions Q Business via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "q-business"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
