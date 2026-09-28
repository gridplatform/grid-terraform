/**
 * Tencent Cloud — vllm
 *
 * Provisions Vllm via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "vllm"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
