/**
 * Red Hat OpenShift — kuberay
 *
 * Provisions Kuberay via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "kuberay"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
