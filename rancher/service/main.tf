/**
 * Rancher — service
 *
 * Provisions Service via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "service"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
