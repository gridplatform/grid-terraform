/**
 * Amazon Web Services — apprunner
 *
 * Provisions Apprunner via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "apprunner"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
