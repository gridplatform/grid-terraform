/**
 * MongoDB Atlas — organization
 *
 * Provisions Organization via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "organization"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
