/**
 * Rancher — secret
 *
 * Provisions Secret via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "secret"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
