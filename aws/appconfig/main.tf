/**
 * Amazon Web Services — appconfig
 *
 * Provisions Appconfig via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "appconfig"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
