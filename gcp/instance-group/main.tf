/**
 * Google Cloud — instance-group
 *
 * Provisions Instance Group via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "instance-group"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
