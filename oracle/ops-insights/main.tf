/**
 * Oracle Cloud Infrastructure (OCI) — ops-insights
 *
 * Provisions Ops Insights via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "ops-insights"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
