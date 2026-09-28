/**
 * Yotta — database
 *
 * Provisions Database via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "database"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
