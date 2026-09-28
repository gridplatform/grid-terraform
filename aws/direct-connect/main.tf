/**
 * Amazon Web Services — direct-connect
 *
 * Provisions Direct Connect via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "direct-connect"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
