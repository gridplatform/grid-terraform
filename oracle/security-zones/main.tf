/**
 * Oracle Cloud Infrastructure (OCI) — security-zones
 *
 * Provisions Security Zones via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "security-zones"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
