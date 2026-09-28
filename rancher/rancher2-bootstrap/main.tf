/**
 * Rancher — rancher2-bootstrap
 *
 * Provisions Rancher2 Bootstrap via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "rancher2-bootstrap"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
