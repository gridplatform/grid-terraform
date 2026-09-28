/**
 * Oracle Cloud Infrastructure (OCI) — cloud-guard
 *
 * Provisions Cloud Guard via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "cloud-guard"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
