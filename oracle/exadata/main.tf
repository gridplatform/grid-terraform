/**
 * Oracle Cloud Infrastructure (OCI) — exadata
 *
 * Provisions Exadata via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "exadata"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
