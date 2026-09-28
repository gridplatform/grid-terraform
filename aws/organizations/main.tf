/**
 * Amazon Web Services — organizations
 *
 * Provisions Organizations via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "organizations"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
