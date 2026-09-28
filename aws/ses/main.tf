/**
 * Amazon Web Services — ses
 *
 * Provisions Ses via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ses"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
