/**
 * MongoDB Atlas — atlas-aws
 *
 * Provisions Atlas Aws via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "atlas-aws"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
