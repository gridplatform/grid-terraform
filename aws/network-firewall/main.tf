/**
 * Amazon Web Services — network-firewall
 *
 * Provisions Network Firewall via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "network-firewall"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
