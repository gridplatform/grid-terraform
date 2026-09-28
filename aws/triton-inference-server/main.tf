/**
 * Amazon Web Services — triton-inference-server
 *
 * Provisions Triton Inference Server via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "triton-inference-server"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
