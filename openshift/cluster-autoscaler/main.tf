/**
 * Red Hat OpenShift — cluster-autoscaler
 *
 * Provisions Cluster Autoscaler via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "cluster-autoscaler"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
