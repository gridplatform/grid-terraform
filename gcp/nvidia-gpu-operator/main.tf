/**
 * Google Cloud — nvidia-gpu-operator
 *
 * Provisions Nvidia Gpu Operator via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "nvidia-gpu-operator"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
