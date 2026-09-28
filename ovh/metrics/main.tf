/**
 * OVHcloud — metrics
 *
 * Provisions Metrics via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "metrics"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
