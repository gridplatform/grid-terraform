/**
 * Oracle Cloud Infrastructure (OCI) — waf
 *
 * Provisions Waf via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "waf"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
