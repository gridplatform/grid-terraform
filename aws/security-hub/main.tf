/**
 * Amazon Web Services — security-hub
 *
 * Provisions Security Hub via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "security-hub"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
