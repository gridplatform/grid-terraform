/**
 * Google Cloud — dataproc-metastore
 *
 * Provisions Dataproc Metastore via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "dataproc-metastore"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
