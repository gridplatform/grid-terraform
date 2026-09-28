/**
 * Oracle Cloud Infrastructure (OCI) — audit
 *
 * Provisions Audit via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "audit"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
