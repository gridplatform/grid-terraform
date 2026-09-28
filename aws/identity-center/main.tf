/**
 * Amazon Web Services — identity-center
 *
 * Provisions Identity Center via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "identity-center"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
