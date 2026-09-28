/**
 * Red Hat OpenShift — aro-worker-node
 *
 * Provisions Aro Worker Node via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "aro-worker-node"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
