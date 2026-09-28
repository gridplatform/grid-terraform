/**
 * Oracle Cloud Infrastructure (OCI) — document-understanding
 *
 * Provisions Document Understanding via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "document-understanding"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
