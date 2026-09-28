/**
 * Red Hat OpenShift — cluster-monitoring
 *
 * Provisions Cluster Monitoring via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "cluster-monitoring"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
