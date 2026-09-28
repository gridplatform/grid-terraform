/**
 * Red Hat OpenShift — kserve
 *
 * Provisions Kserve via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "kserve"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
