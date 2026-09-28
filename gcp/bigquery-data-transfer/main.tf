/**
 * Google Cloud — bigquery-data-transfer
 *
 * Provisions Bigquery Data Transfer via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "bigquery-data-transfer"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
