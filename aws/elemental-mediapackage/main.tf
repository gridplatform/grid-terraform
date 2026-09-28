/**
 * Amazon Web Services — elemental-mediapackage
 *
 * Provisions Elemental Mediapackage via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "elemental-mediapackage"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
