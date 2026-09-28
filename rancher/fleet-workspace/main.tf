/**
 * Rancher — fleet-workspace
 *
 * Provisions Fleet Workspace via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "fleet-workspace"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
