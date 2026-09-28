/**
 * Amazon Web Services — codecommit
 *
 * Provisions Codecommit via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "codecommit"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
