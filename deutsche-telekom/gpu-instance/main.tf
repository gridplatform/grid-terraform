/**
 * Deutsche Telekom (Open Telekom Cloud) — gpu-instance
 *
 * Provisions Gpu Instance via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "gpu-instance"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
