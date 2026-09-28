/**
 * CtrlS — nutanix-cluster
 *
 * Provisions Nutanix Cluster via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ctrls"
    module      = "nutanix-cluster"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
