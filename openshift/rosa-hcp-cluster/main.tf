/**
 * Red Hat OpenShift — rosa-hcp-cluster
 *
 * Provisions Rosa Hcp Cluster via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "rosa-hcp-cluster"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
