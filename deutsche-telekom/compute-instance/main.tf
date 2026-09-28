/**
 * Deutsche Telekom (Open Telekom Cloud) — compute-instance
 *
 * Provisions Compute Instance via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "compute-instance"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
