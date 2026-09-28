/**
 * Amazon Web Services — security-lake
 *
 * Provisions Security Lake via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "security-lake"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
