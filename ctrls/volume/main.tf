/**
 * CtrlS — volume
 *
 * Provisions Volume via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "volume"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
