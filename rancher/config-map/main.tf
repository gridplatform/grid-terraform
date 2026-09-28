/**
 * Rancher — config-map
 *
 * Provisions Config Map via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "config-map"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
