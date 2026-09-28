/**
 * Rancher — user
 *
 * Provisions User via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "user"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
