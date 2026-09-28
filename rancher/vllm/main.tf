/**
 * Rancher — vllm
 *
 * Provisions Vllm via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "vllm"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
