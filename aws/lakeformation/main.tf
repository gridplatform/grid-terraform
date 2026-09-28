/**
 * Amazon Web Services — lakeformation
 *
 * Provisions Lakeformation via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "lakeformation"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
