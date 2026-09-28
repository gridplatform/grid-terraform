/**
 * Amazon Web Services — cloudwan
 *
 * Provisions Cloudwan via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "cloudwan"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
