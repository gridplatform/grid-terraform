/**
 * Amazon Web Services — managed-blockchain
 *
 * Provisions Managed Blockchain via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "managed-blockchain"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
