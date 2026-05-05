resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv-v2"
  description = "KV Version 2 secret engine"
}

resource "vault_kv_secret_v2" "sso_jwt" {
  mount = vault_mount.kvv2.path
  name  = "sso/jwt"

  data_json = jsonencode({
    key = tls_private_key.jwt.private_key_pem
    kid = time_rotating.jwt_rotation.unix
  })

  custom_metadata {
    max_versions = 12
    cas_required = false
  }
}