/**
 * Deutsche Telekom (Open Telekom Cloud) — modelarts
 *
 * Provisions Modelarts via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "modelarts"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
