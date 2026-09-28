/**
 * Red Hat OpenShift — aro-resource-group
 *
 * Provisions Aro Resource Group via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "aro-resource-group"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
