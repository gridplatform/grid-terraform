/**
 * CtrlS — volume-attach
 *
 * Provisions Volume Attach via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "volume-attach"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
