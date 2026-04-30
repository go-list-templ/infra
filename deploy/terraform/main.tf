terraform {
  required_version = "1.15.0"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "5.9.0"
    }
  }
}

module "vault_bootstrap" {
  source = "./"
}