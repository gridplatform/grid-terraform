/**
 * Yotta — object-storage
 *
 * Provisions Object Storage via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "object-storage"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
