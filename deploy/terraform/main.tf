terraform {
  required_version = ">= 1.8.0"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.0"
    }
  }
}

module "vault_bootstrap" {
  source = "./"
}