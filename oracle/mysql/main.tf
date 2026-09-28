/**
 * Oracle Cloud Infrastructure (OCI) — mysql
 *
 * Provisions Mysql via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "mysql"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
