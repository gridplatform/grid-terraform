/**
 * Red Hat OpenShift — aro-cluster
 *
 * Provisions Aro Cluster via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "aro-cluster"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
