/**
 * MongoDB Atlas — atlas-basic
 *
 * Provisions Atlas Basic via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "atlas-basic"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
