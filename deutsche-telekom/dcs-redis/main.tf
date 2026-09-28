/**
 * Deutsche Telekom (Open Telekom Cloud) — dcs-redis
 *
 * Provisions Dcs Redis via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dcs-redis"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
