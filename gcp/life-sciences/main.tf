/**
 * Google Cloud — life-sciences
 *
 * Provisions Life Sciences via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "life-sciences"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
