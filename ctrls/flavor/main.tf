/**
 * CtrlS — flavor
 *
 * Provisions Flavor via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "flavor"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
