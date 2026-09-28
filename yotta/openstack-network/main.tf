/**
 * Yotta — openstack-network
 *
 * Provisions Openstack Network via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "openstack-network"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
