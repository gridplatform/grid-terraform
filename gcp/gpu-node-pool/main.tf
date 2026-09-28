/**
 * Google Cloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "gpu-node-pool"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
