/**
 * Amazon Web Services — kuberay
 *
 * Provisions Kuberay via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "kuberay"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
