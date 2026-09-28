/**
 * Oracle Cloud Infrastructure (OCI) — ai-language
 *
 * Provisions Ai Language via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "ai-language"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
