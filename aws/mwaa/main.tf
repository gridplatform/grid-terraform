/**
 * Amazon Web Services — mwaa
 *
 * Provisions Mwaa via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "mwaa"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
