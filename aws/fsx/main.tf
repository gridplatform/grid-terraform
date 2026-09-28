/**
 * Amazon Web Services — fsx
 *
 * Provisions Fsx via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "fsx"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
