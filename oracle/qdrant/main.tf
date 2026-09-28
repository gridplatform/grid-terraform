/**
 * Oracle Cloud Infrastructure (OCI) — qdrant
 *
 * Provisions Qdrant via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "qdrant"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
