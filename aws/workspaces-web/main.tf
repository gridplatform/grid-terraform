/**
 * Amazon Web Services — workspaces-web
 *
 * Provisions Workspaces Web via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "workspaces-web"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
