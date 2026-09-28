/**
 * Rancher — cluster-role-template
 *
 * Provisions Cluster Role Template via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "cluster-role-template"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
