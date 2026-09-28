/**
 * Google Cloud — app-engine
 *
 * Provisions App Engine via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "app-engine"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
