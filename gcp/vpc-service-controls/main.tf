/**
 * Google Cloud — vpc-service-controls
 *
 * Provisions Vpc Service Controls via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "vpc-service-controls"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
