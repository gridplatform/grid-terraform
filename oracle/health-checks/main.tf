/**
 * Oracle Cloud Infrastructure (OCI) — health-checks
 *
 * Provisions Health Checks via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "health-checks"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
