/**
 * Google Cloud — error-reporting
 *
 * Provisions Error Reporting via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "error-reporting"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
