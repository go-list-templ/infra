resource "vault_mount" "transit" {
  path = "transit"
  type = "transit"
}

resource "vault_transit_secret_backend_key" "sso_key" {
  backend = vault_mount.transit.path
  name    = "sso-auth-key"
  type    = "rsa-4096"

  allow_plaintext_backup = true
  exportable             = true
}