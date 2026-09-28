/**
 * Deutsche Telekom (Open Telekom Cloud) — mrs
 *
 * Provisions Mrs via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "mrs"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
