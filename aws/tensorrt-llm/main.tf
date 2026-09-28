/**
 * Amazon Web Services — tensorrt-llm
 *
 * Provisions Tensorrt Llm via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "tensorrt-llm"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
