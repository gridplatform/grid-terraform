/**
 * CtrlS — share
 *
 * Provisions Share via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "share"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
