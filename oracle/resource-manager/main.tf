/**
 * Oracle Cloud Infrastructure (OCI) — resource-manager
 *
 * Provisions Resource Manager via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "resource-manager"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
