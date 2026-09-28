/**
 * Rancher — feature
 *
 * Provisions Feature via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "feature"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
