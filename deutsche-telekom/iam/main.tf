/**
 * Deutsche Telekom (Open Telekom Cloud) — iam
 *
 * Provisions Iam via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "iam"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
