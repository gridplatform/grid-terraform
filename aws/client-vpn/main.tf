/**
 * Amazon Web Services — client-vpn
 *
 * Provisions Client Vpn via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "client-vpn"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
