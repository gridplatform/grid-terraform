/**
 * Amazon Web Services — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "nvidia-gpu-operator"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
