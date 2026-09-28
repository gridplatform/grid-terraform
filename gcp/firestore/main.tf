/**
 * Google Cloud — firestore
 *
 * Provisions Firestore via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "firestore"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
