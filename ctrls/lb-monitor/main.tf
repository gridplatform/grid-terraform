/**
 * CtrlS — lb-monitor
 *
 * Provisions Lb Monitor via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "lb-monitor"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
