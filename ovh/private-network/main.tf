/**
 * OVHcloud — private-network
 *
 * Provisions Private Network via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "private-network"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
