/**
 * Rancher — node-template
 *
 * Provisions Node Template via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "node-template"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
