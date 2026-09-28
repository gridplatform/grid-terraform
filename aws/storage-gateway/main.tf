/**
 * Amazon Web Services — storage-gateway
 *
 * Provisions Storage Gateway via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "storage-gateway"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
