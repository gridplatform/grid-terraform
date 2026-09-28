/**
 * Amazon Web Services — xray
 *
 * Provisions Xray via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "xray"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
