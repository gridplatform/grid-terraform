/**
 * Rancher — registry
 *
 * Provisions Registry via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "registry"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
