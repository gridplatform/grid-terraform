/**
 * MongoDB Atlas — project
 *
 * Provisions Project via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "project"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
