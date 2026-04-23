terraform {
  backend "kubernetes" {}

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 5.9"
    }
  }
}

provider "vault" {
  address = "http://vault.secrets.svc.cluster.local:8200"
  token   = "root" # todo delete hardcode
}