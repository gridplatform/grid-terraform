/**
 * Deutsche Telekom (Open Telekom Cloud) — as-autoscaling
 *
 * Provisions As Autoscaling via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "as-autoscaling"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
