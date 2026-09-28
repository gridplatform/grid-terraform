/**
 * Google Cloud — bentoml
 *
 * Provisions Bentoml via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "bentoml"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
