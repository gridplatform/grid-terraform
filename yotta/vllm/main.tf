/**
 * Yotta — vllm
 *
 * Provisions Vllm via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "vllm"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
