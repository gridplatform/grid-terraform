/**
 * Deutsche Telekom (Open Telekom Cloud) — load-balancer
 *
 * Provisions Load Balancer via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "load-balancer"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
