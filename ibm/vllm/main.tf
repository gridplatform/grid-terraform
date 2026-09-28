/**
 * IBM Cloud — vllm
 *
 * Provisions Vllm via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "vllm"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
