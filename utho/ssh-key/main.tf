/**
 * Utho Cloud — ssh-key
 *
 * Provisions Ssh Key via the utho Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "utho"
    module      = "ssh-key"
    tf_provider = "utho"
    note        = "module placeholder"
  }
}
