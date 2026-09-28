/**
 * Amazon Web Services — shield
 *
 * Provisions Shield via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "shield"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
