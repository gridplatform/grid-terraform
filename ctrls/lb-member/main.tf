/**
 * CtrlS — lb-member
 *
 * Provisions Lb Member via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "lb-member"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
