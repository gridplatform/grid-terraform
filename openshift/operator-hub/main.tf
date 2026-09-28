/**
 * Red Hat OpenShift — operator-hub
 *
 * Provisions Operator Hub via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "operator-hub"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
