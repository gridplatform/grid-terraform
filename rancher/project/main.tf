/**
 * Rancher — project
 *
 * Provisions Project via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "project"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
