/**
 * Google Cloud — media-cdn
 *
 * Provisions Media Cdn via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "media-cdn"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
