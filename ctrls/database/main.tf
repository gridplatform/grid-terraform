/**
 * CtrlS — database
 *
 * Provisions Database via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "database"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
