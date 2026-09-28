/**
 * Oracle Cloud Infrastructure (OCI) — process-automation
 *
 * Provisions Process Automation via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "process-automation"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
