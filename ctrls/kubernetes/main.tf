/**
 * CtrlS — kubernetes
 *
 * Provisions Kubernetes via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "kubernetes"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
