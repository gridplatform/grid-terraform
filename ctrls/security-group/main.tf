/**
 * CtrlS — security-group
 *
 * Provisions Security Group via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "security-group"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
