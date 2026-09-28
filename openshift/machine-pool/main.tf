/**
 * Red Hat OpenShift — machine-pool
 *
 * Provisions Machine Pool via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "machine-pool"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
