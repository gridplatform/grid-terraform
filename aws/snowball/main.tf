/**
 * Amazon Web Services — snowball
 *
 * Provisions Snowball via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "snowball"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
