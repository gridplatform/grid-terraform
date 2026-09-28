/**
 * Amazon Web Services — chroma
 *
 * Provisions Chroma via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "chroma"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
