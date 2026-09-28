/**
 * Google Cloud — cloud-tasks
 *
 * Provisions Cloud Tasks via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-tasks"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
