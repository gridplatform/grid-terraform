/**
 * Google Cloud — filestore
 *
 * Provisions Filestore via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "filestore"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
