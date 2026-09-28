/**
 * Google Cloud — binary-authorization
 *
 * Provisions Binary Authorization via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "binary-authorization"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
