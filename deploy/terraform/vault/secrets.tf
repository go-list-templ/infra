resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv-v2"
  description = "KV Version 2 secret engine"
}

resource "vault_kv_secret_v2" "sso-service" {
  mount = vault_mount.kvv2.path
  name  = "sso-service/keys"

  data_json = jsonencode({
    private_key = tls_private_key.sso-service-key.private_key_pem
    public_key  = tls_private_key.sso-service-key.public_key_pem
  })

  custom_metadata {
    max_versions = 12
    cas_required = false
  }
}