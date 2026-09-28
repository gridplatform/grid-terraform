/**
 * Amazon Web Services — transcribe
 *
 * Provisions Transcribe via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "transcribe"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
