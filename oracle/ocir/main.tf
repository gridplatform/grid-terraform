/**
 * Oracle Cloud Infrastructure (OCI) — ocir
 *
 * Provisions Ocir via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "ocir"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
