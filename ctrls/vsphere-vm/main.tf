/**
 * CtrlS — vsphere-vm
 *
 * Provisions Vsphere Vm via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "vsphere-vm"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
