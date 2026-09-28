/**
 * Rancher — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the rancher2 Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "rancher"
    module      = "nvidia-gpu-operator"
    tf_provider = "rancher2"
    note        = "module placeholder"
  }
}
