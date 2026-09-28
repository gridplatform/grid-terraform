/**
 * Amazon Web Services — transfer-server
 *
 * Provisions Transfer Server via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "transfer-server"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
