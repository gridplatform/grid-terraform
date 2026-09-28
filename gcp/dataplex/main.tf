/**
 * Google Cloud — dataplex
 *
 * Provisions Dataplex via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "dataplex"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
