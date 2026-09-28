/**
 * Oracle Cloud Infrastructure (OCI) — autonomous-database
 *
 * Provisions Autonomous Database via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "autonomous-database"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
