/**
 * Red Hat OpenShift — self-managed-cluster
 *
 * Provisions Self Managed Cluster via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "self-managed-cluster"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
