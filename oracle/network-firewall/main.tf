/**
 * Oracle Cloud Infrastructure (OCI) — network-firewall
 *
 * Provisions Network Firewall via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "network-firewall"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
