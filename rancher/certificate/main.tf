/**
 * Rancher — certificate
 *
 * Provisions Certificate via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "certificate"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
