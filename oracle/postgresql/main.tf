/**
 * Oracle Cloud Infrastructure (OCI) — postgresql
 *
 * Provisions Postgresql via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "postgresql"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
