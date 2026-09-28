/**
 * Oracle Cloud Infrastructure (OCI) — monitoring
 *
 * Provisions Monitoring via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "monitoring"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
