/**
 * Amazon Web Services — appflow
 *
 * Provisions Appflow via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "appflow"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
