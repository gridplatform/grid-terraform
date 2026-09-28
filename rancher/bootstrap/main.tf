/**
 * Rancher — bootstrap
 *
 * Provisions Bootstrap via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "bootstrap"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
