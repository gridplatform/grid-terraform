/**
 * Amazon Web Services — codeartifact
 *
 * Provisions Codeartifact via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "codeartifact"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
