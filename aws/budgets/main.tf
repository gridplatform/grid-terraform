/**
 * Amazon Web Services — budgets
 *
 * Provisions Budgets via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "budgets"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
