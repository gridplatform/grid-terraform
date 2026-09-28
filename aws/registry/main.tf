/**
 * Amazon Web Services — registry
 *
 * Provisions Registry via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "registry"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
