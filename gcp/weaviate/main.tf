/**
 * Google Cloud — weaviate
 *
 * Provisions Weaviate via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "weaviate"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
