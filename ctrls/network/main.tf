/**
 * CtrlS — network
 *
 * Provisions Network via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "network"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
