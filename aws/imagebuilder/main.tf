/**
 * Amazon Web Services — imagebuilder
 *
 * Provisions Imagebuilder via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "imagebuilder"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
