/**
 * Huawei Cloud — vllm
 *
 * Provisions Vllm via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "vllm"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
