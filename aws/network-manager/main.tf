/**
 * Amazon Web Services — network-manager
 *
 * Provisions Network Manager via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "network-manager"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
