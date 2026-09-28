/**
 * Amazon Web Services — translate
 *
 * Provisions Translate via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "translate"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
