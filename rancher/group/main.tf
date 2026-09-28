/**
 * Rancher — group
 *
 * Provisions Group via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "group"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
