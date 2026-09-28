/**
 * Amazon Web Services — inspector
 *
 * Provisions Inspector via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "inspector"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
