/**
 * CtrlS — router
 *
 * Provisions Router via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "router"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
