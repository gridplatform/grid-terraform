/**
 * Amazon Web Services — finspace
 *
 * Provisions Finspace via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "finspace"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
