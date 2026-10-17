/**
 * MongoDB Atlas — atlas-gcp
 *
 * Provisions Atlas Gcp via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "atlas-gcp"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
