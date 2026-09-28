/**
 * Amazon Web Services — detective
 *
 * Provisions Detective via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "detective"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
