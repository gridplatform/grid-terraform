/**
 * Oracle Cloud Infrastructure (OCI) — db-system
 *
 * Provisions Db System via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "db-system"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
