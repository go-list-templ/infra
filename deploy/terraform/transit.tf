resource "vault_mount" "transit" {
  path = "transit"
  type = "transit"
  description = "Transit engine for encryption and signing"
}

resource "vault_transit_secret_backend_key" "microservice_rsa" {
  backend = vault_mount.transit.path
  name    = "microservice-rsa-key"
  type    = "rsa-4096"

  deletion_allowed = false
  min_decryption_version = 1
  min_encryption_version = 1
}