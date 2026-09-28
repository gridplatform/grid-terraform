/**
 * Google Cloud — triton-inference-server
 *
 * Provisions Triton Inference Server via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "triton-inference-server"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
