/**
 * Amazon Web Services — wafv2
 *
 * Provisions Wafv2 via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "wafv2"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
