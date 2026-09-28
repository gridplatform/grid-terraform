/**
 * Amazon Web Services — codestar-connections
 *
 * Provisions Codestar Connections via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "codestar-connections"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
