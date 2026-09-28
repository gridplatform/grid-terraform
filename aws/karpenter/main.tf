/**
 * Amazon Web Services — karpenter
 *
 * Provisions Karpenter via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "karpenter"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
