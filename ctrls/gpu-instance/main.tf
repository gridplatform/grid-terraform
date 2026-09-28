/**
 * CtrlS — gpu-instance
 *
 * Provisions Gpu Instance via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "gpu-instance"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
