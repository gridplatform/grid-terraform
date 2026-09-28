/**
 * Oracle Cloud Infrastructure (OCI) — stack-monitoring
 *
 * Provisions Stack Monitoring via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "stack-monitoring"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
