/**
 * Amazon Web Services — global-accelerator
 *
 * Provisions Global Accelerator via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "global-accelerator"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
