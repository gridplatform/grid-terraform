/**
 * Amazon Web Services — mainframe-modernization
 *
 * Provisions Mainframe Modernization via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "mainframe-modernization"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
