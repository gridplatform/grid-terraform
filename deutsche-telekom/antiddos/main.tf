/**
 * Deutsche Telekom (Open Telekom Cloud) — antiddos
 *
 * Provisions Antiddos via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "antiddos"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
