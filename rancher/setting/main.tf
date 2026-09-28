/**
 * Rancher — setting
 *
 * Provisions Setting via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "setting"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
