/**
 * Deutsche Telekom (Open Telekom Cloud) — vllm
 *
 * Provisions Vllm via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "vllm"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
