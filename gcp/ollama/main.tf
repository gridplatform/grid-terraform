/**
 * Google Cloud — ollama
 *
 * Provisions Ollama via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "ollama"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
