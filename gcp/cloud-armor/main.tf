/**
 * Google Cloud — cloud-armor
 *
 * Provisions Cloud Armor via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-armor"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
