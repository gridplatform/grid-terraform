/**
 * Google Cloud — llm-inference-endpoint
 *
 * Provisions Llm Inference Endpoint via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "llm-inference-endpoint"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
