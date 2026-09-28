/**
 * Amazon Web Services — healthlake
 *
 * Provisions Healthlake via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "healthlake"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
