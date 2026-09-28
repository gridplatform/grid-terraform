/**
 * Rancher — machine-config
 *
 * Provisions Machine Config via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "machine-config"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
