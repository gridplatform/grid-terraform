/**
 * Oracle Cloud Infrastructure (OCI) — email
 *
 * Provisions Email via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "email"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
