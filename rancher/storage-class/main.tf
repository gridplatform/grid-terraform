/**
 * Rancher — storage-class
 *
 * Provisions Storage Class via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "storage-class"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
