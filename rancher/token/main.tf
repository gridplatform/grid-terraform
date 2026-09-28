/**
 * Rancher — token
 *
 * Provisions Token via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "token"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
