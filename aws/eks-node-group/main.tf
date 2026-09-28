/**
 * Amazon Web Services — eks-node-group
 *
 * Provisions Eks Node Group via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "eks-node-group"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
