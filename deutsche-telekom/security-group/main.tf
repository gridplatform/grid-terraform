/**
 * Deutsche Telekom (Open Telekom Cloud) — security-group
 *
 * Provisions Security Group via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "security-group"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
