/**
 * OVHcloud — dedicated-server
 *
 * Provisions Dedicated Server via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "dedicated-server"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
