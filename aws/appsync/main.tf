/**
 * Amazon Web Services — appsync
 *
 * Provisions Appsync via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "appsync"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
