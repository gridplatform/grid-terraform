/**
 * Amazon Web Services — transit-gateway
 *
 * Provisions Transit Gateway via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "transit-gateway"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
