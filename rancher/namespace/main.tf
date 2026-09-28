/**
 * Rancher — namespace
 *
 * Provisions Namespace via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "namespace"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
