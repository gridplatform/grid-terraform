/**
 * Amazon Web Services — deepspeed
 *
 * Provisions Deepspeed via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "deepspeed"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
