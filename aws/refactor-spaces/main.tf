/**
 * Amazon Web Services — refactor-spaces
 *
 * Provisions Refactor Spaces via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "refactor-spaces"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
