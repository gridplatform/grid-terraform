/**
 * Amazon Web Services — keyspaces
 *
 * Provisions Keyspaces via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "keyspaces"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
