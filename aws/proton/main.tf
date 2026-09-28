/**
 * Amazon Web Services — proton
 *
 * Provisions Proton via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "proton"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
