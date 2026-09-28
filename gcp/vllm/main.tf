/**
 * Google Cloud — vllm
 *
 * Provisions Vllm via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "vllm"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
