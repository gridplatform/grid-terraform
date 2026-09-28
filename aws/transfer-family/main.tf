/**
 * Amazon Web Services — transfer-family
 *
 * Provisions Transfer Family via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "transfer-family"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
