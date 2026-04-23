terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 5.9"
    }
  }
}

provider "vault" {
  address = "http://localhost:8200"
  token   = "root"
}