/**
 * Rancher — kserve
 *
 * Provisions Kserve via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "kserve"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
