/**
 * Oracle Cloud Infrastructure (OCI) — anomaly-detection
 *
 * Provisions Anomaly Detection via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "anomaly-detection"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
