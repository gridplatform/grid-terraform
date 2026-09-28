/**
 * CtrlS — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "gpu-node-pool"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
