variable "do_token" {}

provider "digitalocean" {
  version = "~> 1.15"
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "pokemon-deck-wizard-k8s-cluster" {
  name = "pokemon-deck-wizard-k8s-cluster"
  region = "nyc3"
  version = "1.16.6-do.2"
  node_pool {
    name = "worker-pool"
    node_count = 1
    size = "s-1vcpu-2gb"
  }
}
