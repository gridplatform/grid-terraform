/**
 * Google Cloud — cloud-run-job
 *
 * Provisions Cloud Run Job via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-run-job"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
