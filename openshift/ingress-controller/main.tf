/**
 * Red Hat OpenShift — ingress-controller
 *
 * Provisions Ingress Controller via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "ingress-controller"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
