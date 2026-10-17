/**
 * Utho Cloud — container-registry-robot
 *
 * Provisions Container Registry Robot via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "container-registry-robot"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
