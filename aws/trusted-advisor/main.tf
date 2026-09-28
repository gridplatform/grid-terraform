/**
 * Amazon Web Services — trusted-advisor
 *
 * Provisions Trusted Advisor via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "trusted-advisor"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
