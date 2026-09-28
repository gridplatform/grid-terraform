/**
 * Amazon Web Services — nvidia-nim
 *
 * Provisions Nvidia Nim via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "nvidia-nim"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
