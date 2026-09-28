/**
 * CtrlS — nutanix-subnet
 *
 * Provisions Nutanix Subnet via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "nutanix-subnet"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
