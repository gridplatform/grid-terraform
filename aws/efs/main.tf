/**
 * Amazon Web Services — efs
 *
 * Provisions Efs via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "efs"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
