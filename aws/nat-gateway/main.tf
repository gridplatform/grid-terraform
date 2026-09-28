/**
 * Amazon Web Services — nat-gateway
 *
 * Provisions Nat Gateway via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "nat-gateway"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
