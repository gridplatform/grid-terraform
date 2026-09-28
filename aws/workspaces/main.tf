/**
 * Amazon Web Services — workspaces
 *
 * Provisions Workspaces via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "workspaces"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
