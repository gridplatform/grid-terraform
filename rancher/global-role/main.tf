/**
 * Rancher — global-role
 *
 * Provisions Global Role via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "global-role"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
