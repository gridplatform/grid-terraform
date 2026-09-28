/**
 * Google Cloud — natural-language
 *
 * Provisions Natural Language via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "natural-language"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
