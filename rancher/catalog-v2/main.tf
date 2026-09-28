/**
 * Rancher — catalog-v2
 *
 * Provisions Catalog V2 via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "catalog-v2"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
