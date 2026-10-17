/**
 * MongoDB Atlas — atlas-azure
 *
 * Provisions Atlas Azure via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "atlas-azure"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
