/**
 * Amazon Web Services — aurora
 *
 * Provisions Aurora via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "aurora"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
