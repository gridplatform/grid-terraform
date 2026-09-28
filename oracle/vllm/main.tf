/**
 * Oracle Cloud Infrastructure (OCI) — vllm
 *
 * Provisions Vllm via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "vllm"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
