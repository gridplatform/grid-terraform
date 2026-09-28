/**
 * Red Hat OpenShift — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the rhcs Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "openshift"
    module      = "nvidia-gpu-operator"
    tf_provider = "rhcs"
    note        = "module placeholder"
  }
}
