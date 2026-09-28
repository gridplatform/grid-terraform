/**
 * Rancher — cluster-sync
 *
 * Provisions Cluster Sync via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "cluster-sync"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
