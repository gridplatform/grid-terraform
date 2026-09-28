/**
 * OVHcloud — gateway
 *
 * Provisions Gateway via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "gateway"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
