/**
 * Amazon Web Services — access-analyzer
 *
 * Provisions Access Analyzer via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "access-analyzer"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
