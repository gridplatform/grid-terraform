/**
 * Google Cloud — compute-disk
 *
 * Provisions Compute Disk via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "compute-disk"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
