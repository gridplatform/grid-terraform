/**
 * Google Cloud — dialogflow
 *
 * Provisions Dialogflow via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "dialogflow"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
