/**
 * Google Cloud — cloud-ids
 *
 * Provisions Cloud Ids via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-ids"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
