/**
 * Google Cloud — access-context-manager
 *
 * Provisions Access Context Manager via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "access-context-manager"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
