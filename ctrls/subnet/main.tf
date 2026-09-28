/**
 * CtrlS — subnet
 *
 * Provisions Subnet via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "subnet"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
