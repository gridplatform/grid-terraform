/**
 * Deutsche Telekom (Open Telekom Cloud) — css
 *
 * Provisions Css via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "css"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
