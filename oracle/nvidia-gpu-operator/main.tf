/**
 * Oracle Cloud Infrastructure (OCI) — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "nvidia-gpu-operator"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
