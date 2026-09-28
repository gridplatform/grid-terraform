/**
 * Google Cloud — workstations
 *
 * Provisions Workstations via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "workstations"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
