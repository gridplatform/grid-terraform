/**
 * OVHcloud — vllm
 *
 * Provisions Vllm via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "vllm"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
