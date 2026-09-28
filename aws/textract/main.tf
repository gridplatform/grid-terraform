/**
 * Amazon Web Services — textract
 *
 * Provisions Textract via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "textract"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
