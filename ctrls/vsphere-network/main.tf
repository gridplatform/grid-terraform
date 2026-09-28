/**
 * CtrlS — vsphere-network
 *
 * Provisions Vsphere Network via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "vsphere-network"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
