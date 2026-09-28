/**
 * Amazon Web Services — eks-gpu-node-group
 *
 * Provisions Eks Gpu Node Group via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "eks-gpu-node-group"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
