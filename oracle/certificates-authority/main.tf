/**
 * Oracle Cloud Infrastructure (OCI) — certificates-authority
 *
 * Provisions Certificates Authority via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "certificates-authority"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
