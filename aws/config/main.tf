/**
 * Amazon Web Services — config
 *
 * Provisions Config via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "config"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
