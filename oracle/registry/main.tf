/**
 * Oracle Cloud Infrastructure (OCI) — registry
 *
 * Provisions Registry via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "registry"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
