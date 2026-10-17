/**
 * MongoDB Atlas — push-based-log-export
 *
 * Provisions Push Based Log Export via the mongodbatlas Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "mongodb"
    module      = "push-based-log-export"
    tf_provider = "mongodbatlas"
    note        = "module placeholder"
  }
}
