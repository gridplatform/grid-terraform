/**
 * Amazon Web Services — vllm
 *
 * Provisions Vllm via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "vllm"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
