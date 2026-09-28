/**
 * Red Hat OpenShift — rosa-cluster
 *
 * Provisions Rosa Cluster via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "rosa-cluster"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
