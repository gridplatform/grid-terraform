/**
 * Deutsche Telekom (Open Telekom Cloud) — dc
 *
 * Provisions Dc via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dc"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
