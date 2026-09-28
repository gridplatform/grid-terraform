/**
 * Oracle Cloud Infrastructure (OCI) — cloud-migration
 *
 * Provisions Cloud Migration via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "cloud-migration"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
