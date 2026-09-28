/**
 * Amazon Web Services — amplify
 *
 * Provisions Amplify via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "amplify"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
