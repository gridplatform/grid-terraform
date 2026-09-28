/**
 * Google Cloud — pgvector
 *
 * Provisions Pgvector via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "pgvector"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
