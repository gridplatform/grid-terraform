/**
 * Amazon Web Services — braket
 *
 * Provisions Braket via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "braket"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
