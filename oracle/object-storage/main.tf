/**
 * Oracle Cloud Infrastructure (OCI) — object-storage
 *
 * Provisions Object Storage via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "object-storage"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
