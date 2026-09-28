/**
 * Oracle Cloud Infrastructure (OCI) — heatwave
 *
 * Provisions Heatwave via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "heatwave"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
