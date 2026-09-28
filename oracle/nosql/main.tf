/**
 * Oracle Cloud Infrastructure (OCI) — nosql
 *
 * Provisions Nosql via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "nosql"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
