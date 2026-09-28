/**
 * Amazon Web Services — comprehend
 *
 * Provisions Comprehend via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "comprehend"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
