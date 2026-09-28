/**
 * Google Cloud — open-webui
 *
 * Provisions Open Webui via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "open-webui"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
