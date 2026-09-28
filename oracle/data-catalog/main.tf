/**
 * Oracle Cloud Infrastructure (OCI) — data-catalog
 *
 * Provisions Data Catalog via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "data-catalog"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
