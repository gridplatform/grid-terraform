/**
 * Amazon Web Services — audit-manager
 *
 * Provisions Audit Manager via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "audit-manager"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
