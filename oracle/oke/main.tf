/**
 * Oracle Cloud Infrastructure (OCI) — oke
 *
 * Provisions Oke via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "oke"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
