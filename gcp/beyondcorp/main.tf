/**
 * Google Cloud — beyondcorp
 *
 * Provisions Beyondcorp via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "beyondcorp"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
