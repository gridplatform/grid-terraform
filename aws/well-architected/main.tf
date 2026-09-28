/**
 * Amazon Web Services — well-architected
 *
 * Provisions Well Architected via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "well-architected"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
