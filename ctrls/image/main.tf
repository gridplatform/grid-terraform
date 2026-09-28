/**
 * CtrlS — image
 *
 * Provisions Image via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "image"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
