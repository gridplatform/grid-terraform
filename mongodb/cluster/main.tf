/**
 * MongoDB Atlas — cluster
 *
 * Provisions Cluster via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "cluster"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
