/**
 * Google Cloud — spanner
 *
 * Provisions Spanner via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "spanner"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
