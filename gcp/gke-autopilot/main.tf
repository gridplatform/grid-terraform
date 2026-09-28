/**
 * Google Cloud — gke-autopilot
 *
 * Provisions Gke Autopilot via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "gke-autopilot"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
