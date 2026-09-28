/**
 * Yotta — openstack-compute
 *
 * Provisions Openstack Compute via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "openstack-compute"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
