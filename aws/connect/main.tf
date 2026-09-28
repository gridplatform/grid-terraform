/**
 * Amazon Web Services — connect
 *
 * Provisions Connect via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "connect"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
