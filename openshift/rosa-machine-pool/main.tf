/**
 * Red Hat OpenShift — rosa-machine-pool
 *
 * Provisions Rosa Machine Pool via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "rosa-machine-pool"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
