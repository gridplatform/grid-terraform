/**
 * CtrlS — port
 *
 * Provisions Port via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "port"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
