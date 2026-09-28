/**
 * Deutsche Telekom (Open Telekom Cloud) — subnet
 *
 * Provisions Subnet via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "subnet"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
