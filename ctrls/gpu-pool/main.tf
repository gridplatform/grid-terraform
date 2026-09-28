/**
 * CtrlS — gpu-pool
 *
 * Provisions Gpu Pool via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "gpu-pool"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
