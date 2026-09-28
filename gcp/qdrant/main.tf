/**
 * Google Cloud — qdrant
 *
 * Provisions Qdrant via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "qdrant"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
