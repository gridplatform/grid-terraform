/**
 * Deutsche Telekom (Open Telekom Cloud) — deh
 *
 * Provisions Deh via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "deh"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
