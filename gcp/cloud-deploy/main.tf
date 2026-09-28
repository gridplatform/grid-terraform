/**
 * Google Cloud — cloud-deploy
 *
 * Provisions Cloud Deploy via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-deploy"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
