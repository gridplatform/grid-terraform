/**
 * Red Hat OpenShift — pvc
 *
 * Provisions Pvc via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "pvc"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
