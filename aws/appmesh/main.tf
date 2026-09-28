/**
 * Amazon Web Services — appmesh
 *
 * Provisions Appmesh via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "appmesh"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
