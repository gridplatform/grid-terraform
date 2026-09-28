/**
 * Oracle Cloud Infrastructure (OCI) — integration
 *
 * Provisions Integration via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "integration"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
