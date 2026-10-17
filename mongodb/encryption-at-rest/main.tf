/**
 * MongoDB Atlas — encryption-at-rest
 *
 * Provisions Encryption At Rest via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "encryption-at-rest"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
