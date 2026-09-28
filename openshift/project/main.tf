/**
 * Red Hat OpenShift — project
 *
 * Provisions Project via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "project"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
