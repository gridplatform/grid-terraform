/**
 * Rancher — catalog
 *
 * Provisions Catalog via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "catalog"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
