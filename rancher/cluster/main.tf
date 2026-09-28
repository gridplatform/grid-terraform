/**
 * Rancher — cluster
 *
 * Provisions Cluster via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "cluster"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
