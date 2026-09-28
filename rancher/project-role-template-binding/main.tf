/**
 * Rancher — project-role-template-binding
 *
 * Provisions Project Role Template Binding via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "project-role-template-binding"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
