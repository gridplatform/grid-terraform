/**
 * Oracle Cloud Infrastructure (OCI) — certificates-management
 *
 * Provisions Certificates Management via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "certificates-management"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
