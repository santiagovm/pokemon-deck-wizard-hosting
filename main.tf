terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vasquez-house"
    workspaces {
      name = "pokemon-deck-wizard"
    }
  }
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

resource "digitalocean_project" "pokemon-deck-wizard-project" {
  name = "pokemon-deck-wizard-project"
  description = "Project to group resources related to the Pokemon Deck Wizard Application"
  resources = [digitalocean_kubernetes_cluster.pokemon-deck-wizard-k8s-cluster.id]
}
