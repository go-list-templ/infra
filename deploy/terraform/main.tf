provider "vault" {
  address = "http://vault.localhost"
  token = "root"
}

module "vault" {
  source = "./vault"
}