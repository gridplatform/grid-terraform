/**
 * Rancher — cluster-v2
 *
 * Provisions Cluster V2 via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "cluster-v2"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
