/**
 * Deutsche Telekom (Open Telekom Cloud) — functiongraph
 *
 * Provisions Functiongraph via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "functiongraph"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
