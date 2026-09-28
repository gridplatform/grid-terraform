/**
 * Amazon Web Services — pipes
 *
 * Provisions Pipes via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "pipes"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
