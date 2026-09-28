/**
 * Amazon Web Services — neptune
 *
 * Provisions Neptune via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "neptune"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
