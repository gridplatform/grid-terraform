/**
 * OVHcloud — network
 *
 * Provisions Network via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "network"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
