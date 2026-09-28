/**
 * Oracle Cloud Infrastructure (OCI) — file-storage
 *
 * Provisions File Storage via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "file-storage"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
