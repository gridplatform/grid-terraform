/**
 * Deutsche Telekom (Open Telekom Cloud) — workspace
 *
 * Provisions Workspace via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "workspace"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
