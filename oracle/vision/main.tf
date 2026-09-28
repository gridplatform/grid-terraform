/**
 * Oracle Cloud Infrastructure (OCI) — vision
 *
 * Provisions Vision via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "vision"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
