/**
 * Amazon Web Services — control-tower
 *
 * Provisions Control Tower via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "control-tower"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
