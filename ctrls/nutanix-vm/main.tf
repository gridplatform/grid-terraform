/**
 * CtrlS — nutanix-vm
 *
 * Provisions Nutanix Vm via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "nutanix-vm"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
