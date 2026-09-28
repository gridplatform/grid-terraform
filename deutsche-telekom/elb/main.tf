/**
 * Deutsche Telekom (Open Telekom Cloud) — elb
 *
 * Provisions Elb via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "elb"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
