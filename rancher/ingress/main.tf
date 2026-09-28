/**
 * Rancher — ingress
 *
 * Provisions Ingress via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "ingress"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
