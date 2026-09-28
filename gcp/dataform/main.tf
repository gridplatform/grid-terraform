/**
 * Google Cloud — dataform
 *
 * Provisions Dataform via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "dataform"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
