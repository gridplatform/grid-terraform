/**
 * Rancher — app-v2
 *
 * Provisions App V2 via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "app-v2"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
