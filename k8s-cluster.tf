resource "digitalocean_kubernetes_cluster" "pokemon-deck-wizard-k8s-cluster" {
  name = "pokemon-deck-wizard-k8s-cluster"
  region = "nyc1"
  version = "1.15.5-do.1"
  node_pool {
    name = "worker-pool"
    node_count = 1
    size = "s-1vcpu-2gb"
  }
}
