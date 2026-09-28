/**
 * Google Cloud — gpu-instance
 *
 * Provisions Gpu Instance via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "gpu-instance"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
