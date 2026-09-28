/**
 * Yotta — network
 *
 * Provisions Network via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "network"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
