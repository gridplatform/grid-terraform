/**
 * Amazon Web Services — glacier
 *
 * Provisions Glacier via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "glacier"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
