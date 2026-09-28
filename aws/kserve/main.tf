/**
 * Amazon Web Services — kserve
 *
 * Provisions Kserve via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "kserve"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
