/**
 * Amazon Web Services — sglang
 *
 * Provisions Sglang via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "sglang"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
