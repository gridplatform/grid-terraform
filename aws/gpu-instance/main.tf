/**
 * Amazon Web Services — gpu-instance
 *
 * Provisions Gpu Instance via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "gpu-instance"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
