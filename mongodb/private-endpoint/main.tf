/**
 * MongoDB Atlas — private-endpoint
 *
 * Provisions Private Endpoint via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "private-endpoint"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
