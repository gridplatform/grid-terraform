/**
 * Yotta — compute-instance
 *
 * Provisions Compute Instance via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "compute-instance"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
