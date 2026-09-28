/**
 * Amazon Web Services — ami
 *
 * Provisions Ami via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ami"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
