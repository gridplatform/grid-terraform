/**
 * Amazon Web Services — cognito
 *
 * Provisions Cognito via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "cognito"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
