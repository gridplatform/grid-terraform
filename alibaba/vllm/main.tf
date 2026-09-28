/**
 * Alibaba Cloud — vllm
 *
 * Provisions Vllm via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "vllm"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
