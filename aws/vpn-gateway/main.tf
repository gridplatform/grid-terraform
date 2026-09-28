/**
 * Amazon Web Services — vpn-gateway
 *
 * Provisions Vpn Gateway via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "vpn-gateway"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
