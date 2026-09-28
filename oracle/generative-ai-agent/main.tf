/**
 * Oracle Cloud Infrastructure (OCI) — generative-ai-agent
 *
 * Provisions Generative Ai Agent via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "generative-ai-agent"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
