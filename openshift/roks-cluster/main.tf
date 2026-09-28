/**
 * Red Hat OpenShift — roks-cluster
 *
 * Provisions Roks Cluster via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "roks-cluster"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
