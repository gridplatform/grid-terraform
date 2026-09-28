/**
 * Red Hat OpenShift — machine-set
 *
 * Provisions Machine Set via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "machine-set"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
