/**
 * Amazon Web Services — ram
 *
 * Provisions Ram via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ram"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
