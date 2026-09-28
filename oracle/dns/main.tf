/**
 * Oracle Cloud Infrastructure (OCI) — dns
 *
 * Provisions Dns via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "dns"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
