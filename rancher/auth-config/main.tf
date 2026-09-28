/**
 * Rancher — auth-config
 *
 * Provisions Auth Config via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "auth-config"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
