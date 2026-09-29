/**
 * Google Cloud — gke-node-pool
 *
 * One Grid desired-state JSON unit maps to one GKE node pool.
 * Cluster itself is a separate unit (gcp/kubernetes-engine / type gke).
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "gke-node-pool"
    tf_provider = "google"
    note        = "module placeholder — attach to an existing GKE cluster via cluster_name"
  }
}
