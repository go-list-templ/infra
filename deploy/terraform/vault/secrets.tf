resource "vault_mount" "transit" {
  path = "transit"
  type = "transit"
}

resource "vault_transit_secret_backend_key" "sso-service" {
  backend = vault_mount.transit.path
  name    = "sso-service-keys"
  type    = "rsa-4096"

  exportable = false

  auto_rotate_period = 2592000
}