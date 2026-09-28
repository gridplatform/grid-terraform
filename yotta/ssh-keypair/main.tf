/**
 * Yotta — ssh-keypair
 *
 * Provisions Ssh Keypair via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "ssh-keypair"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
