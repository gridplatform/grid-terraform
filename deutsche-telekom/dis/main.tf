/**
 * Deutsche Telekom (Open Telekom Cloud) — dis
 *
 * Provisions Dis via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dis"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
