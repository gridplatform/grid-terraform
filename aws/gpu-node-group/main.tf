/**
 * Amazon Web Services — gpu-node-group
 *
 * Provisions Gpu Node Group via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "gpu-node-group"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
