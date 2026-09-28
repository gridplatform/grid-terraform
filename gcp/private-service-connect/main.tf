/**
 * Google Cloud — private-service-connect
 *
 * Provisions Private Service Connect via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "private-service-connect"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
