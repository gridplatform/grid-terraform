/**
 * Amazon Web Services — eip
 *
 * Provisions Eip via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "eip"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
