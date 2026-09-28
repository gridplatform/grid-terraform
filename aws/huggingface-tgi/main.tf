/**
 * Amazon Web Services — huggingface-tgi
 *
 * Provisions Huggingface Tgi via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "huggingface-tgi"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
