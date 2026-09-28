/**
 * CtrlS — floating-ip
 *
 * Provisions Floating Ip via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "floating-ip"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
