/**
 * Rancher — node-pool
 *
 * Provisions Node Pool via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "node-pool"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
