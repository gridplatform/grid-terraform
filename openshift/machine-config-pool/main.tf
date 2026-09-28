/**
 * Red Hat OpenShift — machine-config-pool
 *
 * Provisions Machine Config Pool via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "machine-config-pool"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
