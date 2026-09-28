/**
 * Amazon Web Services — quicksight
 *
 * Provisions Quicksight via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "quicksight"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
