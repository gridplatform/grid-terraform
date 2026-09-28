/**
 * Oracle Cloud Infrastructure (OCI) — generative-ai
 *
 * Provisions Generative Ai via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "generative-ai"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
