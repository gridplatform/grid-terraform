/**
 * CtrlS — load-balancer
 *
 * Provisions Load Balancer via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "load-balancer"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
