/**
 * OVHcloud — baremetal
 *
 * Provisions Baremetal via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "baremetal"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
