/**
 * Oracle Cloud Infrastructure (OCI) — certificates
 *
 * Provisions Certificates via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "certificates"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
