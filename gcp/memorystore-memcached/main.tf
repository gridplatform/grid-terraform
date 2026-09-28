/**
 * Google Cloud — memorystore-memcached
 *
 * Provisions Memorystore Memcached via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "memorystore-memcached"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
