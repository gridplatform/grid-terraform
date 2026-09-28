/**
 * OVHcloud — subnet
 *
 * Provisions Subnet via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "subnet"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
