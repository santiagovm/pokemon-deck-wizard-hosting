terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vasquez-house"
    workspaces {
      name = "pokemon-deck-wizard"
    }
  }
}
