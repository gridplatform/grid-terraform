/**
 * Amazon Web Services — llm-inference-endpoint
 *
 * Provisions Llm Inference Endpoint via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "llm-inference-endpoint"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
