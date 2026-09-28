/**
 * Google Cloud — source-repositories
 *
 * Provisions Source Repositories via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "source-repositories"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
