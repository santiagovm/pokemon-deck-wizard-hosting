variable "do_token" {}

provider "digitalocean" {
  version = "~> 1.15"
  token = var.do_token
}
