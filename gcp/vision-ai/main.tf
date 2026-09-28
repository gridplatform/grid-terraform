/**
 * Google Cloud — vision-ai
 *
 * Provisions Vision Ai via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "vision-ai"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
