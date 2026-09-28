/**
 * Google Cloud — tensorrt-llm
 *
 * Provisions Tensorrt Llm via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "tensorrt-llm"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
