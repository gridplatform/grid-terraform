/**
 * Rancher — custom-user
 *
 * Provisions Custom User via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "custom-user"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
