/**
 * Amazon Web Services — cloudformation
 *
 * Provisions Cloudformation via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "cloudformation"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
