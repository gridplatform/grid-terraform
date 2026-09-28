/**
 * Amazon Web Services — athena
 *
 * Provisions Athena via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "athena"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
