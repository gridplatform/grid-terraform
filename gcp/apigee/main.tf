/**
 * Google Cloud — apigee
 *
 * Provisions Apigee via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "apigee"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
