/**
 * Yotta — kubernetes
 *
 * Provisions Kubernetes via the openstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "kubernetes"
    tf_provider = "openstack"
    note        = "module placeholder"
  }
}
