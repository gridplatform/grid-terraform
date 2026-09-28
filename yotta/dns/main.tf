/**
 * Yotta — dns
 *
 * Provisions Dns via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "dns"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
