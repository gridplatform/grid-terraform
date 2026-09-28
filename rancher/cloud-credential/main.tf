/**
 * Rancher — cloud-credential
 *
 * Provisions Cloud Credential via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "cloud-credential"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
