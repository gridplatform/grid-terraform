/**
 * Amazon Web Services — elemental-mediastore
 *
 * Provisions Elemental Mediastore via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "elemental-mediastore"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
