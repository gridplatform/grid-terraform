/**
 * Oracle Cloud Infrastructure (OCI) — web-application-firewall
 *
 * Provisions Web Application Firewall via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "web-application-firewall"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
